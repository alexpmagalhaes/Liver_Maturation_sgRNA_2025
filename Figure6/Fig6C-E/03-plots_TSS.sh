#!/usr/bin/env bash

Mathep_folder=/project/MatHep/IGV_merged/CutRun/
Results_Folder=/project/hnisz_seq_data/CutandRun/MatHep_20240405/heatmaps/

# for i in E15_Adult_Down_Gene \
#  E15_Adult_Up_Gene \
#  Liver_neonate_mm10 \
#  Liver_E14.5_mm10 \
#  Liver_EP_mm10 \
# AdultPPvsAdultPC.down_Gene \
# AdultPPvsAdultPC.up_Gene
#  Hepatocyte_mm10; do (

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
    --scoreFileName $Mathep_folder/Adult_H3K4me3_CutRun.merged.bw \
    $Mathep_folder/E15_H3K4me3_CutRun.merged.bw \
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

    #$Mathep_folder/Adult_H3K4me3_CutRun.merged.bw \
        #$Mathep_folder/E15_H3K4me3_CutRun.merged.bw \
        #
        # $Mathep_folder/Adult_Hnf4a_CutRun.merged.bw \
        # $Mathep_folder/Adult_Nfix_CutRun.merged.bw \
        # $Mathep_folder/E15_Hnf4a_CutRun.merged.bw \
        # $Mathep_folder/E15_Nfix_CutRun.merged.bw \
