#!/usr/bin/env python
# coding: utf-8
from __future__ import print_function
import os
import os
import sys
import pandas as pd
import csv
import numpy

CWD = os.getcwd()
listfiles = []
df_list = []
DEGsList = []

df_list_Name = []
DEGsList_Name = []

os.mkdir('FilteredR')
os.mkdir('FilteredR_Fc')



for root, dirs, files in os.walk(CWD):
    for file in files:
        if file.endswith(".down.csv"):
             listfiles.append(os.path.join(root, file))

for i in listfiles:
    filename = print(os.path.splitext(i)[0])
    base=os.path.basename(i)
    filename2 = os.path.splitext(base)[0]
    df = pd.read_csv(i,low_memory=False)
    df = df[df['baseMean'] >= 50]
    df.to_csv("./FilteredR/" + filename2 + ".FilteredR.csv", index=False)
    df = df[df['log2FoldChange'] <= -2]
    df.to_csv("./FilteredR_Fc/" + filename2 + ".FilteredR_Fc.csv", index=False)
    df1 = df["Id"]
    df1_ = df["GeneName"]
    df1 = df1.rename(filename2)
    df1_ = df1_.rename(filename2)
    df_list.append(df1)
    df_list_Name.append(df1_)


listfiles = []

for root, dirs, files in os.walk(CWD):
    for file in files:
        if file.endswith(".up.csv"):
             listfiles.append(os.path.join(root, file))

for i in listfiles:
    filename = print(os.path.splitext(i)[0])
    base=os.path.basename(i)
    filename2 = os.path.splitext(base)[0]
    df = pd.read_csv(i,low_memory=False)
    df = df[df['baseMean'] >= 50]
    df.to_csv("./FilteredR/" + filename2 + ".FilteredR.csv", index=False)
    df = df[df['log2FoldChange'] >= 2]
    df.to_csv("./FilteredR_Fc/" + filename2 + ".FilteredR_Fc.csv", index=False)
    df1 = df["Id"]
    df1_ = df["GeneName"]
    df1 = df1.rename(filename2)
    df1_ = df1_.rename(filename2)
    df_list.append(df1)
    df_list_Name.append(df1_)

finaldf = pd.concat(df_list, axis = 1)
finaldf_ = pd.concat(df_list_Name, axis = 1)

DEGsList = pd.Series(finaldf.values.ravel('F'))
DEGsList_Name = pd.Series(finaldf_.values.ravel('F'))
DEGsList = DEGsList.drop_duplicates()
DEGsList_Name = DEGsList_Name.drop_duplicates()
DEGsList.to_csv("DEG_R50_Fc2.csv", index=False)
DEGsList_Name.to_csv("DEG_R50_Fc2_Name.csv", index=False)

finaldf.to_csv("DEGlist.csv", index=False)
finaldf_.to_csv("DEGlist_Name.csv", index=False)
