#========================================================================================#
#              equilibration decreasing positional restraints                            #
#membrane
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_10_memb.in -p ../01_topology/complex.prmtop -c ../03_heat/heat.rst7 -r equi_10_memb.rst7 -o equi_10_memb.out -x equi_10_memb.nc -ref ../03_heat/heat.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_5.0_memb.in -p ../01_topology/complex.prmtop -c equi_10_memb.rst7 -r equi_5.0_memb.rst7 -o equi_5.0_memb.out -x equi_5.0_memb.nc -ref equi_10_memb.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_2.5_memb.in -p ../01_topology/complex.prmtop -c equi_5.0_memb.rst7 -r equi_2.5_memb.rst7 -o equi_2.5_memb.out -x equi_2.5_memb.nc -ref equi_5.0_memb.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_1.0_memb.in -p ../01_topology/complex.prmtop -c equi_2.5_memb.rst7 -r equi_1.0_memb.rst7 -o equi_1.0_memb.out -x equi_1.0_memb.nc -ref equi_2.5_memb.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_0.5_memb.in -p ../01_topology/complex.prmtop -c equi_1.0_memb.rst7 -r equi_0.5_memb.rst7 -o equi_0.5_memb.out -x equi_0.5_memb.nc -ref equi_1.0_memb.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_0.25_memb.in -p ../01_topology/complex.prmtop -c equi_0.5_memb.rst7 -r equi_0.25_memb.rst7 -o equi_0.25_memb.out -x equi_0.25_memb.nc -ref equi_0.5_memb.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_0.1_memb.in -p ../01_topology/complex.prmtop -c equi_0.25_memb.rst7 -r equi_0.1_memb.rst7 -o equi_0.1_memb.out -x equi_0.1_memb.nc -ref equi_0.25_memb.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_0.05_memb.in -p ../01_topology/complex.prmtop -c equi_0.1_memb.rst7 -r equi_0.05_memb.rst7 -o equi_0.05_memb.out -x equi_0.05_memb.nc -ref equi_0.1_memb.rst7

#protein
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_10_protein.in -p ../01_topology/complex.prmtop -c equi_0.05_memb.rst7 -r equi_10_protein.rst7 -o equi_10_protein.out -x equi_10_protein.nc -ref equi_0.05_memb.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_5.0_protein.in -p ../01_topology/complex.prmtop -c equi_10_protein.rst7 -r equi_5.0_protein.rst7 -o equi_5.0_protein.out -x equi_5.0_protein.nc -ref equi_10_protein.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_2.5_protein.in -p ../01_topology/complex.prmtop -c equi_5.0_protein.rst7 -r equi_2.5_protein.rst7 -o equi_2.5_protein.out -x equi_2.5_protein.nc -ref equi_5.0_protein.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_1.0_protein.in -p ../01_topology/complex.prmtop -c equi_2.5_protein.rst7 -r equi_1.0_protein.rst7 -o equi_1.0_protein.out -x equi_1.0_protein.nc -ref equi_2.5_protein.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_0.5_protein.in -p ../01_topology/complex.prmtop -c equi_1.0_protein.rst7 -r equi_0.5_protein.rst7 -o equi_0.5_protein.out -x equi_0.5_protein.nc -ref equi_1.0_protein.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_0.25_protein.in -p ../01_topology/complex.prmtop -c equi_0.5_protein.rst7 -r equi_0.25_protein.rst7 -o equi_0.25_protein.out -x equi_0.25_protein.nc -ref equi_0.5_protein.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_0.1_protein.in -p ../01_topology/complex.prmtop -c equi_0.25_protein.rst7 -r equi_0.1_protein.rst7 -o equi_0.1_protein.out -x equi_0.1_protein.nc -ref equi_0.25_protein.rst7
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_0.05_protein.in -p ../01_topology/complex.prmtop -c equi_0.1_protein.rst7 -r equi_0.05_protein.rst7 -o equi_0.05_protein.out -x equi_0.05_protein.nc -ref equi_0.1_protein.rst7

#solto
export CUDA_VISIBLE_DEVICES="0"
pmemd.cuda -O -i equi_wr.in -p ../01_topology/complex.prmtop -c equi_0.05_protein.rst7 -r equi_wr.rst7 -o equi_wr.out -x equi_wr.nc
#========================================================================================#
