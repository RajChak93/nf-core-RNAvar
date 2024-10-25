#!/bin/sh
#SBATCH --time=165:00:00
#SBATCH --job-name=48
#SBATCH --output=job.48.out
#SBATCH --error=job.48.err
#SBATCH --mem=0Gb
#SBATCH --partition=unmc_gudalab
#SBATCH --cpus-per-task=40

module load nextflow/24.04

nextflow run nf-core/rnavar -r 1.0.0 -c custom_new.config --input /work/unmc_gudalab/rajashreec/files/NF_2/48.csv --fasta /work/unmc_gudalab/rajashreec/files/reference/hg38.p13.fa --star_index /work/unmc_gudalab/rajashreec/files/GenomeDir --dict /work/unmc_gudalab/rajashreec/files/NF_1/hg38.p13.dict --fasta_fai /work/unmc_gudalab/rajashreec/files/reference/hg38.p13.fa.fai --gtf gencode.v46.annotation.gtf --dbsnp 1000G_phase3_v4_20130502.sites.hg38.vcf --known_indels Mills_and_1000G_gold_standard.indels.hg38.vcf.gz --known_indels_tbi Mills_and_1000G_gold_standard.indels.hg38.vcf.gz.tbi --dbsnp_tbi 1000G_phase3_v4_20130502.sites.hg38.vcf.idx --outdir /work/unmc_gudalab/rajashreec/files/NF_2/48/ -resume
