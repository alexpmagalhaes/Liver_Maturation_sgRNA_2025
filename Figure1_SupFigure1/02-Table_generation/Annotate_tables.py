#!/usr/bin/env python
# coding: utf-8

from __future__ import print_function
import os
import sys
import pandas as pd
import csv

annot = pd.read_csv('geneInfo.txt',low_memory=False, sep = "\t")

CWD = os.getcwd()
listfiles = []
for root, dirs, files in os.walk(CWD):
    for file in files:
        if file.endswith(".txt"):
             listfiles.append(os.path.join(root, file))

for i in listfiles:
    df = pd.read_csv(i,low_memory=False, sep = "\t")
    df = pd.merge(df, annot, how="left", left_on="Id", right_on="GeneID")
    df = df.drop('GeneID', 1)
    df.to_csv(i + ".csv", index=False)

#df.to_csv(i + ".csv", index=False)
