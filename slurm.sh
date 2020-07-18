#!/bin/bash

#SBATCH --job-name=distributed-string-ppi-embedding
#SBATCH --cpus-per-task=1
#SBATCH --nodes=2
#SBATCH --tasks-per-node 1
#SBATCH --mem=1GB
#SBATCH --time 1:00:00

nodes=$(scontrol show hostnames $SLURM_JOB_NODELIST) # Getting the node names
nodes_array=($nodes)

for ((i = 0; i < $worker_num; i++)); do
  node_name=${nodes_array[$i]}
  srun --nodes=1 --ntasks=1 -w $node_name python -u distributed_graph_embedding.py $i&# Starting the workers
done
