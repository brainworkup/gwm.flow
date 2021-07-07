# bcftools postimputation QC
# July 6, 2021

## transfer files
rsync -avh ~/homo_sapiens trampush@hpc-transfer1.usc.edu:/project/trampush_325/gwm/bcftools

rsync -avh ~/gwm.flow/gwm_vcf_norm*.* trampush@hpc-transfer1.usc.edu:/project/trampush_325/gwm/bcftools

## symlink vcf files

export study=dns
export binary="$study"_b37_qc_eur_norel
export -p # to check env variables

unset study
unset phe

for i in {1..22}; do echo "ln -sf /project/trampush_325/gwm/genotypes/gwm_"$study"/chr"$i".dose.vcf.gz /project/trampush_325/gwm/bcftools/"$study".chr"$i".dose.vcf.gz"; done

info files (if needed)
for i in {1..22}; do echo "ln -sf /project/trampush_325/gwm/genotypes/gwm_"$study"/chr"$i".info.gz /project/trampush_325/gwm/bcftools/"$study".chr"$i".info.gz"; done

## Get nodes for interactive job
salloc --time=4:00:00 --cpus-per-task=8 --mem=16GB --account=trampush_325

## Submit parallel job
Multi-threaded jobs

### Job arrays

#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2GB
#SBATCH --time=2:00:00
#SBATCH --account=trampush_325
#SBATCH --array=1-22
#SBATCH --partition=epyc-64

module purge
module load gcc/9.2.0
module load bcftools/1.9
module load samtools/1.10
module load htslib/1.10.2

./gwm_vcf_norm.sh --input-file=input_${SLURM_ARRAY_TASK_ID} --output-file=output_${SLURM_ARRAY_TASK_ID}

export study=dns

for i in {1..22}; do echo "bcftools norm -m-any "$study".chr"$i".dose.vcf.gz | bcftools norm -Ov --check-ref w -f Homo_sapiens_assembly38.fasta > "$study".chr"$i".norm.vcf"; done



## load modules
module load usc
module load gcc/9.2.0 # might not work w plink
module load bcftools/1.9
module load samtools/1.10
module load htslib/1.10.2

## VCF Normalizing

wget https://storage.googleapis.com/genomics-public-data/resources/broad/hg38/v0/Homo_sapiens_assembly38.fasta

export study=adni
export study=dns

### step 1
Firstly, I recommend that you normalise your VCFs so that everything else that you do will work as planned. 'Normalising' a VCF usally means splitting multi-allelic calls, left-aligning indels, and ensuring that the alleles specified as REF in your VCF are also present in the reference genome. You can do this with (for each VCF file):

```
#1st pipe, splits multi-allelic calls into separate variant calls
#2nd pipe, left-aligns indels and issues warnings when the REF base in your VCF does not match the base in the supplied FASTA reference genome

bcftools norm -m-any adni.chr9.dose.vcf.gz | bcftools norm -Ob --check-ref w -f Homo_sapiens_assembly38.fasta > adni.chr9.norm.bcf &

bcftools norm -m-any adni.chr10.dose.vcf.gz | bcftools norm -Ob --check-ref w -f Homo_sapiens_assembly38.fasta > adni.chr10.norm.bcf &
```
sstat -j 5005889 --format=JobID,MaxRSS,AveCPUFreq,MaxDiskRead,MaxDiskWrite
seff -j 5005889

```
bcftools index adni.chr9.norm1.bcf &
bcftools index adni.chr10.norm.bcf &
```

### step 2
You can then merge these together with:
```
bcftools merge -Ob -m none adni.chr9.norm.bcf adni.chr10.norm.bcf > adni.norm.merge.chr9-10.bcf &
```

bcftools merge -Ob -m none adni.chr9.norm.bcf adni.chr10.norm.bcf | bcftools annotate -Ob -x 'ID' -I +'%CHROM:%POS:%REF:%ALT' > adni.norm.merge.chr9-10.bcf &

### step 3
For the intersection, etc, you may additionally consider setting a unique value for each variant in the ID column. The following line will eliminate whatever is already set for the ID field and then set a new value:
```
bcftools annotate -Ob -x 'ID' -I +'%CHROM:%POS:%REF:%ALT'
```
You can then do various operations using `bcftools isec`. There are examples given in the program when you just type `bcftools isec`:


## Consequence calling

The typical command looks like this

`bcftools csq -f hs37d5.fa -g Homo_sapiens.GRCh37.104.gff3.gz in.vcf -Ob -o out.bcf`

export chr=1
export study=adni
export info="$study"."$chr".info.gz
export index="$study"."$chr".index
export in="$study".chr"$chr".dose.vcf.gz
export out="$study".chr"$chr".csq.bcf

bcftools csq -f hs37d5.fa -g Homo_sapiens.GRCh38.104.chromosome."$chr".gff3.gz "$in" -Ob -o "$out"

bcftools csq -f hs37d5.fa -g Homo_sapiens.GRCh38.104.gff3.gz "$in" -Ob -o "$out"

samtools faidx -f Homo_sapiens.GRCh38.104.gff3.gz

bcftools index -f "$in" -t

bcftools index -f Homo_sapiens.GRCh38.104.gff3.gz
adni_chr1_dose.vcf.gz

The program adds a consequence annotation in a format similar to VEP:

Consequence|gene|transcript|biotype|strand|amino_acid_change|dna_change

## Annotating VCF/BCF files
Transfer annotation from INFO column to FORMAT
Imagine you need to transfer INFO/DP annotation to FORMAT/DP. This is currently not possible using a single bcftools annotate command, but can be done easily in multiple steps. This is a complete example that can be copy and pasted as is:

# Create a test VCF
echo -e '##fileformat=VCFv4.3' > test.vcf
echo -e '##INFO=<ID=DP,Number=1,Type=Integer,Description="Read depth">' >> test.vcf
echo -e '##FORMAT=<ID=GT,Number=1,Type=String,Description="Genotype">' >> test.vcf
echo -e '##contig=<ID=1,length=248956422,assembly=hg38>' >> test.vcf
echo -e '#CHROM\tPOS\tID\tREF\tALT\tQUAL\tFILTER\tINFO\tFORMAT\tsmpl1\tsmpl2' >> test.vcf
echo -e '1\t16648016\t.\tG\t.\t.\t.\tDP=10\tGT\t0/0\t0/0' >> test.vcf

# Extract INFO/DP into a tab-delimited annotation file
bcftools query -f '%CHROM\t%POS\t%DP\n' test.vcf | bgzip -c > annot.txt.gz

# Index the file with tabix
tabix -s1 -b2 -e2 annot.txt.gz

# Create a header line for the new annotation
echo -e '##FORMAT=<ID=DP,Number=1,Type=Integer,Description="Read depth">' >> hdr.txt

# Transfer the annotation to sample 'smpl1'
bcftools annotate -s smpl1 -a annot.txt.gz -h hdr.txt -c CHROM,POS,FORMAT/DP test.vcf

To annotate the imputed vcf you should use dbsnp hg38 vcf with bcftools annotate







export PATH=/project/trampush_325/bin:$PATH

plink2 -vcf 'dosage=GP-force' 'dosage=HDS-force' --hard-call-threshold 0.1 --import-dosage-certainty 0.9

--indiv-sort 'natural'

# cogent

module load gcc/8.3.0
module load openblas/0.3.8
module load plink2/2.00a2.3-openblas


# to convert .vcf back to .bed
plink2 --vcf 1.pbwt_reference_impute.vcf.gz --a2-allele "$study".bim 6 2 --make-bed --const-fid --out "$study"_merge_chr1_sanger_output.1

plink2 --vcf "$study"_chr1_dose.vcf.bgz --a2-allele adni_b37_qc_eur_norel.bim 6 2 --make-bed --const-fid --out "$study"_chr1_topmed_dosage

nohup scp -rpC ~/gwm.flow/data/genotypes/ADNI/adni_merge_b37_qc_eur_norel.* trampush@hpc-transfer2.usc.edu:/project/trampush_325/gwm/genotypes/gwm_adni

plink2 --vcf chr1.dose.vcf.gz 'dosage=HDS-force' --hard-call-threshold 0.1 --import-dosage-certainty 0.9 --fam adni_merge_b37_qc_eur_norel.fam --make-pgen psam-cols=+fid --maf 0.01 --out adni_chr1_dosage

plink2 --vcf chr1.dose.vcf.gz --fam adni_merge_b37_qc_eur_norel.fam --double-id --make-pgen --out adni_chr1_dosage


--vcf-min-gq 0.6

--make-pgen psam-cols=+fid 'fill-missing-from-dosage'
--sort-vars 'natural'
--maf 0.001
--out dns_chr4_dosage


