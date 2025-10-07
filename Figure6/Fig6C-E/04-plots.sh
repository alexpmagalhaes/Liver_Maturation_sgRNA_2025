#!/usr/bin/env bash

Mathep_folder=/project/MatHep/IGV_merged/CutRun/

# $Mathep_folder/Adult_H3K4me3_CutRun.merged.bw
# $Mathep_folder/E15_H3K4me3_CutRun.merged.bw

##### binsize 10 - 1500bp

# computeMatrix reference-point \
# --referencePoint center \
# -b 1500 -a 1500 \
# --binSize 10 \
# --regionsFileName $Mathep_folder/peaks/Adult_Hnf4a.merged.seacr.peaks.stringent.bed \
#  $Mathep_folder/peaks/Adult_Nfix.merged.seacr.peaks.stringent.bed \
#  $Mathep_folder/peaks/Adult_Nr1i3.merged.seacr.peaks.stringent.bed \
# --scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
# $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
# $Mathep_folder/Adult_Nr1i3_CutRun.merged.bw \
# $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
# $Mathep_folder/E15_Nfix_CutRun.merged.bw \
# $Mathep_folder/E15_Nr1i3_CutRun.merged.bw \
# -p 14 \
# --smartLabels \
# -o Mathep_CutRun_RefPoint_AdultPeaks_cM_b10_1500bp_sorted.gz \
# --outFileSortedRegions Mathep_CutRun_RefPoint_AdultPeaks_cM_b10_1500bp_sorted.bed
#
# sleep 2m
#
# plotHeatmap \
# --matrixFile Mathep_CutRun_RefPoint_AdultPeaks_cM_b10_1500bp_sorted.gz \
# --plotFileFormat pdf \
# --colorList 'white,#188ae6' 'white,#da8412' 'white,#5cada0' 'white,#188ae6' 'white,#da8412' 'white,#5cada0' \
# --missingDataColor 1 \
# -out Mathep_CutRun_RefPoint_AdultPeaks_cM_b10_1500bp_sorted.pdf \
# --dpi 300 \
# --sortRegions descend \
# --sortUsingSamples 3 4
#
# ##### binsize 10 - 3000bp
#
# computeMatrix reference-point \
# --referencePoint center \
# -b 3000 -a 3000 \
# --binSize 10 \
# --regionsFileName $Mathep_folder/peaks/Adult_Hnf4a.merged.seacr.peaks.stringent.bed \
#  $Mathep_folder/peaks/Adult_Nfix.merged.seacr.peaks.stringent.bed \
#  $Mathep_folder/peaks/Adult_Nr1i3.merged.seacr.peaks.stringent.bed \
# --scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
# $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
# $Mathep_folder/Adult_Nr1i3_CutRun.merged.bw \
# $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
# $Mathep_folder/E15_Nfix_CutRun.merged.bw \
# $Mathep_folder/E15_Nr1i3_CutRun.merged.bw \
# -p 14 \
# --smartLabels \
# -o Mathep_CutRun_RefPoint_AdultPeaks_cM_b10_3000bp_sorted.gz \
# --outFileSortedRegions Mathep_CutRun_RefPoint_AdultPeaks_cM_b10_3000bp_sorted.bed
#
# sleep 2m
#
# plotHeatmap \
# --matrixFile Mathep_CutRun_RefPoint_AdultPeaks_cM_b10_3000bp_sorted.gz \
# --plotFileFormat pdf \
# --colorList 'white,#188ae6' 'white,#da8412' 'white,#5cada0' 'white,#188ae6' 'white,#da8412' 'white,#5cada0' \
# --missingDataColor 1 \
# -out Mathep_CutRun_RefPoint_AdultPeaks_cM_b10_3000bp_sorted.pdf \
# --dpi 300 \
# --sortRegions descend \
# --sortUsingSamples 3 4
#
# ##### binsize 50 - 1500bp
#
# computeMatrix reference-point \
# --referencePoint center \
# -b 1500 -a 1500 \
# --binSize 50 \
# --regionsFileName $Mathep_folder/peaks/Adult_Hnf4a.merged.seacr.peaks.stringent.bed \
#  $Mathep_folder/peaks/Adult_Nfix.merged.seacr.peaks.stringent.bed \
#  $Mathep_folder/peaks/Adult_Nr1i3.merged.seacr.peaks.stringent.bed \
# --scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
# $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
# $Mathep_folder/Adult_Nr1i3_CutRun.merged.bw \
# $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
# $Mathep_folder/E15_Nfix_CutRun.merged.bw \
# $Mathep_folder/E15_Nr1i3_CutRun.merged.bw \
# -p 14 \
# --smartLabels \
# -o Mathep_CutRun_RefPoint_AdultPeaks_cM_b50_1500bp_sorted.gz \
# --outFileSortedRegions Mathep_CutRun_RefPoint_AdultPeaks_cM_b50_1500bp_sorted.bed
#
# sleep 2m
#
# plotHeatmap \
# --matrixFile Mathep_CutRun_RefPoint_AdultPeaks_cM_b50_1500bp_sorted.gz \
# --plotFileFormat pdf \
# --colorList 'white,#188ae6' 'white,#da8412' 'white,#5cada0' 'white,#188ae6' 'white,#da8412' 'white,#5cada0' \
# --missingDataColor 1 \
# -out Mathep_CutRun_RefPoint_AdultPeaks_cM_b50_1500bp_sorted.pdf \
# --dpi 300 \
# --sortRegions descend \
# --sortUsingSamples 3 4
#
# ##### binsize 50 - 3000bp
#
#
# computeMatrix reference-point \
# --referencePoint center \
# -b 3000 -a 3000 \
# --binSize 50 \
# --regionsFileName $Mathep_folder/peaks/Adult_Hnf4a.merged.seacr.peaks.stringent.bed \
#  $Mathep_folder/peaks/Adult_Nfix.merged.seacr.peaks.stringent.bed \
#  $Mathep_folder/peaks/Adult_Nr1i3.merged.seacr.peaks.stringent.bed \
# --scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
# $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
# $Mathep_folder/Adult_Nr1i3_CutRun.merged.bw \
# $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
# $Mathep_folder/E15_Nfix_CutRun.merged.bw \
# $Mathep_folder/E15_Nr1i3_CutRun.merged.bw \
# -p 14 \
# --smartLabels \
# -o Mathep_CutRun_RefPoint_AdultPeaks_cM_b50_3000bp_sorted.gz \
# --outFileSortedRegions Mathep_CutRun_RefPoint_AdultPeaks_cM_b50_3000bp_sorted.bed
#
# sleep 2m
#
# plotHeatmap \
# --matrixFile Mathep_CutRun_RefPoint_AdultPeaks_cM_b50_3000bp_sorted.gz \
# --plotFileFormat pdf \
# --colorList 'white,#188ae6' 'white,#da8412' 'white,#5cada0' 'white,#188ae6' 'white,#da8412' 'white,#5cada0' \
# --missingDataColor 1 \
# -out Mathep_CutRun_RefPoint_AdultPeaks_cM_b50_3000bp_sorted.pdf \
# --dpi 300 \
# --sortRegions descend \
# --sortUsingSamples 3 4


###  scale-regions regionBodyLength 1000 - 1500bp

computeMatrix scale-regions \
-b 3000 -a 3000 \
-bs 50 \
--regionBodyLength 5000 \
--regionsFileName /project/hnisz_seq_data/CutandRun/MatHep_20240405/heatmaps/genes_mm10.bed \
--scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
$Mathep_folder/Adult_Nfix_CutRun.merged.bw \
$Mathep_folder/Adult_Nr1i3_CutRun.merged.bw \
$Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
$Mathep_folder/E15_Nfix_CutRun.merged.bw \
$Mathep_folder/E15_Nr1i3_CutRun.merged.bw \
-p 30 \
--smartLabels \
--skipZeros \
--missingDataAsZero \
-o Mathep_CutRun_sclReg3kb_genesmm10_5kb_TFs_sorted.gz \
--outFileSortedRegions Mathep_CutRun_sclReg3kb_genesmm10_5kb_TFs_sorted.bed

sleep 2m

plotHeatmap \
--matrixFile Mathep_CutRun_sclReg3kb_genesmm10_5kb_TFs_sorted.gz \
--plotFileFormat png \
--colorMap YlGnBu \
-out Mathep_CutRun_sclReg3kb_genesmm10_5kb_TFs_sorted.png \
--dpi 150 \
--sortUsing sum
