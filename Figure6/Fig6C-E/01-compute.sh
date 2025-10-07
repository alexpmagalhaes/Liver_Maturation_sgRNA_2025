#!/usr/bin/env bash

# computeMatrix scale-regions \
# -S WT_24_ChIP_merged.bw  WT_48_ChIP_merged.bw IS15_24_ChIP_merged.bw IS15_48_ChIP_merged.bw  \
# -R CEBPa_WT_IS15_Common_F.bed CEBPa_IS15_Unique_F.bed \
# -o CEBPa_cM_b10.gz \
# --outFileNameMatrix CEBPa_cM_matrix_b10.tab \
# --outFileSortedRegions CEBPa_cM_sorted_b10.bed \
# -a 3000 -b 3000 \
# -p 40


# computeMatrix scale-regions \
# -S WT_24_ChIP_merged.bw  WT_48_ChIP_merged.bw IS15_24_ChIP_merged.bw IS15_48_ChIP_merged.bw  \
# -R CEBPa_WT_IS15_Common_F.bed CEBPa_IS15_Unique_F.bed \
# -o CEBPa_cM_b50.gz \
# --outFileNameMatrix CEBPa_cM_matrix_b50.tab \
# --outFileSortedRegions CEBPa_cM_sorted_b50.bed \
# --binSize 50 \
# -a 3000 -b 3000 \
# -p 40


computeMatrix reference-point \
-S WT_24_ChIP_merged.bw  WT_48_ChIP_merged.bw IS15_24_ChIP_merged.bw IS15_48_ChIP_merged.bw  \
-R CEBPa_WT_IS15_Common_F.bed CEBPa_IS15_Unique_F.bed \
-o CEBPa_cM_b10_1500bp.gz \
--outFileNameMatrix CEBPa_matrix_b10_1500bp.tab \
--outFileSortedRegions CEBPa_cM_sorted_b10_1500bp.bed \
-a 1500 -b 1500 \
--referencePoint center \
--binSize 10 \
-p 40
#
#
# computeMatrix reference-point \
# -S WT_24_ChIP_merged.bw  WT_48_ChIP_merged.bw IS15_24_ChIP_merged.bw IS15_48_ChIP_merged.bw  \
# -R CEBPa_WT_IS15_Common_F.bed CEBPa_IS15_Unique_F.bed \
# -o CEBPa_cM_b50.gz \
# --outFileNameMatrix CEBPa_matrix_b50.tab \
# --outFileSortedRegions CEBPa_cM_sorted_b50.bed \
# --binSize 50 \
# -a 3000 -b 3000 \
# --referencePoint center \
# -p 40
