script = '''#!/bin/bash
#SBATCH --job-name=loop0
#SBATCH --partition=gpu
#SBATCH --nodelist=gpu-1-6
#SBATCH -N 1
#SBATCH --mail-type=all
#SBATCH --mail-user=2059433635@qq.com
#SBATCH --output=/home/dkjiang/log/loop0.out
#SBATCH --error=/home/dkjiang/log/loop0.err
python -m casanovo.casanovo train'''

train_peak_paths = [
  'Bacillus-subtilis',
  'Candidatus-endoloripes',
  'H.-sapiens',
  'Methanosarcina-mazei',
  'Mus-musculus',
  'Saccharomyces-cerevisiae',
  'Solanum-lycopersicum',
  'Vigna-mungo'
]
folder = '/home/dkjiang/data'

for path in train_peak_paths:
  script += f' {folder}/{path}/*.mgf'

import os
folder = '/home/dkjiang/data/Apis-mellifera'

for file in os.listdir(folder):
  file = os.path.join(folder, file)
  assert os.path.isfile(file)
  script += f' -p {file}'

f = open('train.sh', 'w')
f.write(script)
f.close()