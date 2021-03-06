#!/bin/bash

#$ -V
#$ -cwd
#$ -q development
#$ -pe 12way 12			
#$ -N parallel_system_western_sahara
#$ -o output_parallel_system_western_sahara.txt
#$ -e error_parallel_system_western_sahara.txt
#$ -M sishirsat@cs.stonybrook.edu
#$ -m be
#$ -l h_rt=01:00:00

export PATH=$PATH:$HOME/cilk/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cilk/lib

echo western_sahara.tsp | ./ParallelTSP_System > output/parallel_system_western_sahara.txt
