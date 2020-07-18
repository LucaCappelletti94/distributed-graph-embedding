git clone https://github.com/SchedMD/slurm-gcp
cd slurm-gcp
wget https://raw.githubusercontent.com/LucaCappelletti94/distributed-graph-embedding/master/slurm.yaml
gcloud deployment-manager deployments create distributed-ppi --config slurm.yaml
# Remember to remove os-login= TRUE, or at least, I do not know how to connect to the login node otherwise