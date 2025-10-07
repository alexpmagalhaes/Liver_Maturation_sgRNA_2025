#!/usr/bin/env bash
set -ve

WORK_DIR=/project/hnisz_seq_data/CutandRun/MatHep_20240405

env > $WORK_DIR/logs/debug_environment0_20240429_mm39.txt

#source /home/magalhae/.pam_enviroment
source /home/magalhae/miniconda3/bin/activate nextflow

env > $WORK_DIR/logs/debug_environment1_20240429_mm39.txt

cd $WORK_DIR

cp -r ./fastq $MXQ_JOB_TMPDIR/

cd $MXQ_JOB_TMPDIR/

RESULTSFOLDER=results_20240621_TF_mm10

nextflow -log $WORK_DIR/logs/log_nextflow_20240621_TF_mm10.log run nf-core/cutandrun \
--input $WORK_DIR/Samplesheet_20240621_TF.csv \
--outdir $RESULTSFOLDER \
-profile singularity \
--fasta /project/hnisz_bioinf/Genomes/GRCm38/Sequence/WholeGenomeFasta/genome.fa \
--gtf /project/hnisz_bioinf/Genomes/GRCm38/Annotation/Genes/gencode.vM25.annotation.gtf \
--blacklist /project/hnisz_bioinf/Genomes/GRCm38/Assets/blacklists/GRCm38-blacklist.bed \
--bowtie2 /project/hnisz_bioinf/Genomes/GRCm38/Sequence/Bowtie2Index \
--gene_bed /project/hnisz_bioinf/Genomes/GRCm38/Annotation/Genes/genes_mm10.bed \
--mito_name chrM \
--peakcaller seacr \
--macs_gsize 2466184610 \
--end_to_end false \
--dump_scale_factors true \
--spikein_genome "R64-1-1" \
#--skip_heatmaps false \
#--dedup_target_reads true

cp scale-factors.csv $RESULTSFOLDER

cp -r $RESULTSFOLDER "$WORK_DIR/"

touch $WORK_DIR/logs/Done_results_20240621_TF.txt


RESULTSFOLDER=results_20240621_H3K4me3_mm10

nextflow -log $WORK_DIR/logs/log_nextflow_20240621_H3K4me3_mm10.log run nf-core/cutandrun \
--input $WORK_DIR/Samplesheet_20240621_H3K4me3.csv \
--outdir $RESULTSFOLDER \
-profile singularity \
--fasta /project/hnisz_bioinf/Genomes/GRCm38/Sequence/WholeGenomeFasta/genome.fa \
--gtf /project/hnisz_bioinf/Genomes/GRCm38/Annotation/Genes/gencode.vM25.annotation.gtf \
--blacklist /project/hnisz_bioinf/Genomes/GRCm38/Assets/blacklists/GRCm38-blacklist.bed \
--bowtie2 /project/hnisz_bioinf/Genomes/GRCm38/Sequence/Bowtie2Index \
--gene_bed /project/hnisz_bioinf/Genomes/GRCm38/Annotation/Genes/genes_mm10.bed \
--mito_name chrM \
--peakcaller seacr \
--macs_gsize 2466184610 \
--end_to_end false \
--dump_scale_factors true \
--spikein_genome "R64-1-1" \
#--skip_heatmaps false \
#--dedup_target_reads true

cp scale-factors.csv $RESULTSFOLDER

cp -r $RESULTSFOLDER "$WORK_DIR/"

touch $WORK_DIR/logs/Done_results_20240621_H3K4me3.txt
