# AMR analysis training
## Preparation
1. Clone this repo <br>
<code> git clone git clone https://github.com/leducquangpm/TrainingAMR.git</code>
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
  
