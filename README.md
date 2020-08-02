# distributed-graph-embedding
Experiment to test if is possible to approximate huge graphs embedding

```
python3 -m venv ~/distributed_ppi
source ~/distributed_ppi/bin/activate

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