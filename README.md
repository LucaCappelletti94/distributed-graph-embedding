# distributed-graph-embedding
Experiment to test if is possible to approximate huge graphs embedding

```
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O anaconda.sh
bash ./anaconda.sh -b
echo "export PATH=\$PATH:$HOME/anaconda3/bin" >> $HOME/.bashrc

bash
conda init
bash

conda install tensorflow-gpu

git clone https://github.com/monarch-initiative/embiggen # Until is published on pypi
cd embiggen
git checkout word2vec # Until master branch is updated
python3 -m pip install .
cd ..
rm -fdr embiggen

git clone https://github.com/LucaCappelletti94/distributed_bayesian_optimization
cd distributed_bayesian_optimization
python3 -m pip install -r ~/requirements.txt
deactivate

sbatch slurm.sh
```