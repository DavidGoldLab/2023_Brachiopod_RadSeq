#!/bin/bash -l
#SBATCH -D /home/dgold/
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dgold@ucdavis.edu 
#SBATCH -o /home/dgold/RadS-o%j.txt
#SBATCH -e /home/dgold/RadS-e%j.txt
#SBATCH -J RadS
#SBATCH -t 48:00:00
cd /home/dgold/23_Radseq
PATH=$PATH:/home/dgold/.linuxbrew/bin:/home/dgold/miniconda3/bin
iqtree -s drop_C09_A12_B08_B12_E08_F08_G08.phy -m MFP -bb 1000 -nt 16

