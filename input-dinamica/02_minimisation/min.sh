### minimisation with positional restraints ###
# run in the first device: ID=0
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i rest.in -o rest.out -p ../01_topology/complex.prmtop -c ../01_topology/complex.rst7 -r rest.rst7 -ref ../01_topology/complex.rst7
# minimisation 
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i min_no_rest.in -o min_no_rest.out -p ../01_topology/complex.prmtop -c rest.rst7 -r min_no_rest.rst7
