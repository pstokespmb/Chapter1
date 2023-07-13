#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Apr 19 11:05:28 2019

@author: peterstokes
"""

import sys

InputFile = sys.argv[1]
OutputFile = sys.argv[2]
#range_chr = int(sys.argv[4]) 

smc= open(InputFile, "r")
output = open(OutputFile, "w")

for line in smc:
    if line.startswith("#"):
        #print(line)
        output.write(line)
    else:
        split = line.split()
        if int(split[1]) == int(0) and int(split[2]) == int(0) and int(split[3]) == int(46):
            newSplit_1 = -1
            newSplit_2 = 0
            newSplit_3 = 0
            #print(split[0] + " " + str(newSplit_1) + " " + str(newSplit_2) + " " + str(newSplit_3))
            output.write(split[0] + " " + str(newSplit_1) + " " + str(newSplit_2) + " " + str(newSplit_3) + "\n")
        else:
            #print(split[0] + " " + split[1] + " " + split[2] + " " + split[3])
            output.write(split[0] + " " + split[1] + " " + split[2] + " " + split[3] + "\n")

output.close()            

        #if split[1]==0 and split[2]==0 and split[3]==46:
        #    print(line)
        #else:
        #    continue
'''for line in smc:
    if line.startswith("#" + "\n"):
        output.write(line)
    else:
        #split = line.split("\t")
        #output.write(split[0])
        print("nothing here!")
        
        
if age < 18:
    print("You are a minor.")
elif age >= 18 and age < 65:
    print("You are an adult.")
else:
    print("You are a senior citizen.")        
        
        
'''

'''



vcf_list = []
total_list = []




for line in vcf:
    split = line.split("\t")
    if split[0][0] == "#":
        continue
    else:
        vcf_list.append(int(split[1]))
print("VCF list created")
#print(vcf_list)

vcf_list_set = set(vcf_list)
print("vcf set list created")
#print(vcf_list_set)

for i in range(1,range_chr):
    total_list.append(i)
print("total list created")
#print(total_list)

total_list_set = set(total_list)
print("total set list created")
#print(total_list_set)

new_set = total_list_set - vcf_list_set
print("new set list created")
#print(new_set)

print("now writing to output")

for item in new_set:
        output.write(chromosome + "\t" + "%s\t" % item + "%s" % item + "\n")


'''

