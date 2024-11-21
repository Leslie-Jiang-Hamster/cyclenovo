#!/bin/bash
#SBATCH --job-name=loop1
#SBATCH --partition=gpu
#SBATCH --nodelist=gpu-1-6
#SBATCH -N 1
#SBATCH --mail-type=all
#SBATCH --mail-user=2059433635@qq.com
#SBATCH --output=/home/dkjiang/log/loop1.out
#SBATCH --error=/home/dkjiang/log/loop1.err
#SBATCH --gres=gpu:1
python -m casanovo.casanovo train /home/dkjiang/data/Bacillus-subtilis/*.mgf /home/dkjiang/data/Candidatus-endoloripes/*.mgf /home/dkjiang/data/H.-sapiens/*.mgf /home/dkjiang/data/Methanosarcina-mazei/*.mgf /home/dkjiang/data/Mus-musculus/*.mgf /home/dkjiang/data/Saccharomyces-cerevisiae/*.mgf /home/dkjiang/data/Solanum-lycopersicum/*.mgf /home/dkjiang/data/Vigna-mungo/*.mgf -p /home/dkjiang/data/Apis-mellifera/BC-1.mgf -p /home/dkjiang/data/Apis-mellifera/BC-1_150902103726.mgf -p /home/dkjiang/data/Apis-mellifera/BC-2.mgf -p /home/dkjiang/data/Apis-mellifera/BM-3.mgf -p /home/dkjiang/data/Apis-mellifera/nc-b.mgf -p /home/dkjiang/data/Apis-mellifera/M-1.mgf -p /home/dkjiang/data/Apis-mellifera/S-1.mgf -p /home/dkjiang/data/Apis-mellifera/NM-1.mgf -p /home/dkjiang/data/Apis-mellifera/S-2.mgf -p /home/dkjiang/data/Apis-mellifera/NC-1.mgf -p /home/dkjiang/data/Apis-mellifera/BM-1.mgf -p /home/dkjiang/data/Apis-mellifera/NM-2.mgf -p /home/dkjiang/data/Apis-mellifera/S-3.mgf -p /home/dkjiang/data/Apis-mellifera/M-2.mgf -p /home/dkjiang/data/Apis-mellifera/M-3.mgf -p /home/dkjiang/data/Apis-mellifera/nc-a.mgf -p /home/dkjiang/data/Apis-mellifera/NM-4.mgf