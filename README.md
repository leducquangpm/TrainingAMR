# AMR analysis training
## Preparation (Linux)
1. Clone this repo <br>
<code> git clone https://github.com/leducquangpm/TrainingAMR.git</code>
2. Install analysis tools (via conda):
- Download and install the appropriate conda, such as anaconda from 
   https://repo.anaconda.com/archive/
   
- Create a conda environment with all the necessary dependencies: From the repository directory run

```bash

conda create -y -c conda-forge -c defaults --name amrtraining python=3.7 mamba

source activate amrtraining

mamba install -y -c conda-forge -c bioconda -c anaconda -c etetoolkit -c defaults  --file requirements.txt

```
3. Open jupyter notebook and enjoy!
## Setup on Windows (via docker)
0. Install docker on Windows (Docker Desktop)
1. Pull docker image from Docker Hub
```bash

docker pull quangld/amrtraining:1.0

```
Or build docker image by yourself:
```bash

docker build -f Dockerfile -t quangld/amrtraining:1.0 .

```
2. Start docker container:
```bash

docker run -it --network="host" -v /path/to/TrainingAMR:/misc/amrtraining -w /misc/amrtraining quangld/amrtraining:1.0

```
3. Clone this repo (or download zip file of repo and unzip to get TraningAMR folder)
4. Open jupyter notebook inside container and access localhost:8888 on web browser:
```bash

jupyter notebook

```
