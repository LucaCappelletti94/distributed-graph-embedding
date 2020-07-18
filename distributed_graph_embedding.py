from embiggen import SkipGram, Node2VecSequence
from ensmallen_graph import EnsmallenGraph  # pylint: disable=no-name-in-module
import sys


seed = sys.argv[1]

with open(f"/home/{seed}.txt", "w") as f:
    f.write(f"Slurm job completed with seed: {seed}.")
