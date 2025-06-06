#--Protocolo simulação Membrana--#

# 1) Criar sistema no CHARMM-GUI Membrane Builder
# http://www.charmm-gui.org/?doc=input/membrane.bilayer

# OBS: OS VALORES VÃO DEPENDER DO TAMANHO DO SISTEMA

Water thickness: 15.0
Lenght of X and Y: 120

# 2) Copiar os arquivos de saída do CHARMM-GUI (step5_assembly.pdb e step5_input.pdb) para a pasta 00_prep

# 3) Converter PDB para AMBER (rodar os comandos no terminal dentro do diretório 00_prep)

grep "PRO" step5_input.pdb > PROT.pdb
grep "MEMB" step5_assembly.pdb > MEMB.pdb    #usar o input do charmm (dá erro com o do amber)
grep "TIP3" step5_input.pdb > WAT.pdb
grep "IONS" step5_input.pdb > IONS.pdb


# 4) Copiar a tabela de conversão charmmlipid2amber.csv para o diretório indicado abaixo e depois rodar o comando para converter o formato da membrana para AMBER:

charmmlipid2amber.py -i MEMB.pdb -c $AMBERHOME/AmberTools/src/etc/charmmlipid2amber/charmmlipid2amber.csv -o MEMB.pdb


# 5) Calcular as dimensões da caixa a partir das moléculas de água e copiar os valores calculados para o arquivo de input do tleap (tleap-membrane.in):

# OBS: INDICADO COPIAR OS VALORES CALCULADOS PARA ESTE PROTOCOLO PARA NÃO PRECISAR RODAR O COMANDO DE NOVO CASO SEJA NECESSÁRIO.

./vmd_box_dims.sh -i step5_input.pdb -s water

# 6) Criar arquivos de topologia e de coordenadas para o complexo:

# OBS: ANTES DE RODAR O COMANDO, VERIFICAR SE HÁ LIGAÇÕES COVALENTES A SEREM ADICIONADAS AO SISTEMA.
#      CASO HAJAM LIGAÇÕES COVALENTES, ADICIONÁ-LAS NO ARQUIVO DE INPUT DO tleap (tleap-membrane.in).

tleap -f tleap-membrane.in

# 7) Copiar arquivos de topologia e coordenadas para a pasta 01_topology

