#!/usr/bin/python

import os
import sys
import shutil

prefix = sys.argv[1]
i = 1
cwd = os.getcwd()

# create temporary folder
if not os.path.isdir('___tmp___'):
    os.makedirs('___tmp___')

# move all files to temporary folder
for f in os.listdir('.'):
    if not os.path.isdir(f):
        shutil.move(f,'___tmp___')

# change directory to temporary folder
os.chdir('___tmp___')

for f in os.listdir('.'):
    # get extension
    f_ext = (os.path.splitext(f)[1])
    # generate new file name
    newfilename = prefix + '_' + str(i) + f_ext
    i += 1
    # move file
    shutil.move(f, cwd + '/' + newfilename)

# remove temporary folder
shutil.rmtree(os.getcwd())
