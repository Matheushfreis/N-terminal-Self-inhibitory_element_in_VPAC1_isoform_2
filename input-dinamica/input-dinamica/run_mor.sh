#!/bin/sh

LANG=en_US 


basedir=$(pwd)

cd $basedir'/02_minimisation'
./min.sh
wait
wait
wait
cd ..

cd $basedir'/03_heat'
./heat.sh
wait
wait
wait
cd ..

cd $basedir'/04_equilibration'
./equi.sh
wait
wait
wait
cd ..

cd $basedir'/05_production/rep1'
./producao.sh
wait
wait
wait
cd ..

