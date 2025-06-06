#========================================================================================#
# heating
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i heat.in -p ../01_topology/complex.prmtop -c ../02_minimisation/min_no_rest.rst7 -r heat.rst7 -o heat.out -x heat.nc -ref ../02_minimisation/min_no_rest.rst7
