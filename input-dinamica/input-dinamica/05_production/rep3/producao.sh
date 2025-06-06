#!/bin/bash

#                                production 500ns                       #
# n = run ID

export CUDA_VISIBLE_DEVICES="0"

pmemd.cuda -O -i prod_1.in -p ../01_topology/complex.prmtop -c ../04_equilibration/equi_wr.rst7 -r prod_1.rst7 -o prod_1.out -x prod_1.nc
wait
wait

n=2
while [ $n -le 20 ]
do

# p= previous run ID
p=$((n-1))
cp prod_1.in prod_${n}.in

export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i prod_${n}.in -p ../01_topology/complex.prmtop -c prod_${p}.rst7 -r prod_${n}.rst7 -o prod_${n}.out -x prod_${n}.nc
wait
wait

n=$((n+1))
done

#========================================================================================#
