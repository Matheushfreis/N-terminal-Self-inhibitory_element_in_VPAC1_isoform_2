#--Protocolo simulação Membrana--#

#Criar system no CHARMM-GUI Membrane Builder
http://www.charmm-gui.org/?doc=input/membrane.bilayer
Water thickness: 15.0
Lenght of X and Y 120


#Converter PDB para AMBER
grep "DNAA" step5_input.pdb > DNA.pdb
grep "MEMB" step5_assembly.pdb > MEMB.pdb #usar o input do charmm (dar erro com o do amber)
grep "TIP3" step5_input.pdb > WAT.pdb
grep "IONS" step5_input.pdb > IONS.pdb

charmmlipid2amber.py -i MEMB.pdb -c $AMBERHOME/AmberTools/src/etc/charmmlipid2amber/charmmlipid2amber.csv -o MEMB.pdb


#Now calculate your box dimensions from the water molecules:
./vmd_box_dims.sh -i step5_input.pdb -s water
121.15200042724610, 121.385997772216795, 169.93900299072266


#Creating topology and coordinate files for complex
tleap -f tleap-membrane.in #topologia complex
