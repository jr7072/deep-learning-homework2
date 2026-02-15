# run from workspace!

# install unzip
apt update && sudo apt install unzip

#install conda
mkdir -p ./miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ./miniconda3/miniconda.sh
bash ./miniconda3/miniconda.sh -b -u -p ./miniconda3
rm ./miniconda3/miniconda.sh
source ./miniconda3/bin/activate
conda init --all

conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# set up environment
mkdir conda-envs
conda create --prefix ./conda-envs/deep-learning python=3.11
