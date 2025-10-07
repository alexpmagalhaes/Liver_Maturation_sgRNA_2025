#!/usr/bin/env bash

Mathep_folder=/project/MatHep/IGV_merged/CutRun/
Results_Folder=/project/hnisz_seq_data/CutandRun/MatHep_20240405/heatmaps/

# for i in E15_Adult_Down_TSS \
#  E15_Adult_Up_TSS \
#  E15_AdultPC_Down_TSS \
#  E15_AdultPC_Up_TSS \
#  E15_AdultPP_Down_TSS \
#  E15_AdultPP_Up_TSS; do (
#
#    FileName="${Results_Folder}${i}.bed"
#    outFile=Mathep_CutRun_ctr_1_5kb_${i}_TFs_mm10_sorted.gz
#    outBedFile=Mathep_CutRun_ctr_1_5kb_${i}_TFs_mm10_sorted.bed
#    outImage=Mathep_CutRun_ctr_1_5kb_${i}_TFs_mm10_sorted.png
#
#   computeMatrix reference-point \
#     --referencePoint center \
#     -b 1500 -a 1500 \
#     --binSize 50 \
#     --regionsFileName $FileName \
#     --scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
#     $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
#     $Mathep_folder/Adult_Nr1i3_CutRun.merged.bw \
#     $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
#     $Mathep_folder/E15_Nfix_CutRun.merged.bw \
#     $Mathep_folder/E15_Nr1i3_CutRun.merged.bw \
#     -p 40 \
#     --skipZeros \
#     --missingDataAsZero \
#     --smartLabels \
#     -o $outFile \
#     --outFileSortedRegions $outBedFile
#
#   sleep 1m
#
#   plotHeatmap \
#     --matrixFile $outFile \
#     --plotFileFormat png \
#     --colorMap YlGnBu \
#     -out $outImage \
#     --dpi 150 \
#     --sortUsing sum \
#     --zMax 6 \
#     --yMax 6
# )
# done
#
# for i in E15_Adult_Down_Gene \
#  E15_Adult_Up_Gene \
#  E15_AdultPC_Down_Gene \
#  E15_AdultPC_Up_Gene \
#  E15_AdultPP_Down_Gene \
#  E15_AdultPP_Up_Gene; do (
#
#    FileName="${Results_Folder}${i}.bed"
#    outFile=Mathep_CutRun_sclReg_3kb_${i}_5kb_TFs_mm10_sorted.gz
#    outBedFile=Mathep_CutRun_sclReg_3kb_${i}_5kb_TFs_mm10_sorted.bed
#    outImage=Mathep_CutRun_sclReg_3kb_${i}_5kb_TFs_mm10_sorted.png
#
#    computeMatrix scale-regions \
#     -b 3000 -a 3000 \
#     -bs 50 \
#     --regionBodyLength 5000 \
#     --regionsFileName $FileName \
#     --scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
#     $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
#     $Mathep_folder/Adult_Nr1i3_CutRun.merged.bw \
#     $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
#     $Mathep_folder/E15_Nfix_CutRun.merged.bw \
#     $Mathep_folder/E15_Nr1i3_CutRun.merged.bw \
#     -p 40 \
#     --smartLabels \
#     --skipZeros \
#     --missingDataAsZero \
#     -o $outFile \
#     --outFileSortedRegions $outBedFile
#
#     sleep 1m
#
#     plotHeatmap \
#       --matrixFile $outFile \
#       --plotFileFormat png \
#       --colorMap YlGnBu \
#       -out $outImage \
#       --dpi 150 \
#       --sortUsing sum \
#       --zMax 6 \
#       --yMax 6
# )
# done



# for i in Nfix_NTC_down_Gene \
#  Nfix_NTC_up_Gene \
#  Nr1i3_NTC_down_Gene \
#  Nr1i3_NTC_up_Gene; do (
#
#    FileName="${Results_Folder}${i}.bed"
#    outFile=Mathep_CutRun_ctr_1_5kb_${i}_TFs_mm10_sorted.gz
#    outBedFile=Mathep_CutRun_ctr_1_5kb_${i}_TFs_mm10_sorted.bed
#    outImage=Mathep_CutRun_ctr_1_5kb_${i}_TFs_mm10_sorted.png

  # computeMatrix reference-point \
  #   --referencePoint center \
  #   -b 1500 -a 1500 \
  #   --binSize 50 \
  #   --regionsFileName $FileName \
  #   --scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
  #   $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
  #   $Mathep_folder/Adult_Nr1i3_CutRun.merged.bw \
  #   $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
  #   $Mathep_folder/E15_Nfix_CutRun.merged.bw \
  #   $Mathep_folder/E15_Nr1i3_CutRun.merged.bw \
  #   -p 40 \
  #   --skipZeros \
  #   --missingDataAsZero \
  #   --smartLabels \
  #   -o $outFile \
  #   --outFileSortedRegions $outBedFile
  #
  # sleep 1m

  # plotHeatmap \
  #   --matrixFile $outFile \
  #   --plotFileFormat png \
  #   --colorMap YlGnBu \
  #   -out $outImage \
  #   --dpi 150 \
  #   --sortUsing sum \
  #   --zMax 6 \
  #   --yMax 6

  # plotHeatmap \
  #   --matrixFile $outFile \
  #   --plotFileFormat pdf \
  #   --colorMap YlGnBu \
  #   -out $outImage \
  #   --sortUsing sum \
  #   --zMax 4 \
  #   --yMax 4

# )
# done

# for i in Liver_EP_mm10 \
# Hepatocyte_EP_mm10 \
# Hepatocyte_mm10 \
# Liver_neonate_mm10
# Nfix_NTC_down_Gene \
#  Nfix_NTC_up_Gene \
#  Nr1i3_NTC_down_Gene \
#  Nr1i3_NTC_up_Gene; do (

for i in AD_down_NFIX_down_Gene \
  AD_up_NFIX_down_Gene; do (

   FileName="${Results_Folder}${i}.bed"
   outFile=Mathep_CutRun_sclReg_3kb_${i}_5kb_TFs_mm10_sorted.gz
   outBedFile=Mathep_CutRun_sclReg_3kb_${i}_5kb_TFs_mm10_sorted.bed
   outImage=Mathep_CutRun_sclReg_3kb_${i}_5kb_TFs_mm10_sorted.pdf

   computeMatrix scale-regions \
    -b 2500 -a 2500 \
    -bs 50 \
    --regionBodyLength 5000 \
    --regionsFileName $FileName \
    --scoreFileName $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
    $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
    $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
    $Mathep_folder/E15_Nfix_CutRun.merged.bw \
    -p 16 \
    --smartLabels \
    --skipZeros \
    --missingDataAsZero \
    -o $outFile \
    --outFileSortedRegions $outBedFile

    sleep 1m

    # plotHeatmap \
    #   --matrixFile $outFile \
    #   --plotFileFormat png \
    #   --colorMap YlGnBu \
    #   -out $outImage \
    #   --dpi 150 \
    #   --sortUsing sum \
    #   --zMax 6 \
    #   --yMax 6

    plotHeatmap \
      --matrixFile $outFile \
      --plotFileFormat pdf \
      --colorMap YlGnBu \
      -out $outImage \
      --sortUsing sum
)
done
