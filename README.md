# nextflow_variant_calling_conda
NEXTFLOW PIPELINE (VARIANT CALLING) USING CONDA FOR DEPENDENCIES
<br>
PRE-REQUISITE:
<br>
1)Nextflow requires Bash 3.2 (or later) and Java 11 (or later, up to 21) to be installed.
<br>
2)Download the executable package in your terminal window:
<br>
wget -qO- https: #get.nextflow.io | bash
<br>
or
<br>
curl -s https: #get.nextflow.io | bash
<br>
3)Make the binary executable:
<br>
chmod +x nextflow
<br>
4)To add Nextflow to your system PATH
<br>
export PATH="/path/to/nextflow:$PATH"
<br>
E.g., export PATH="/home/ishagupta/nextflow/:$PATH"
<br>
5)Reload the shell configuration file by running:
<br>
source ~/.bashrc
<br>
6)Ensure installation:
<br>
nextflow -version
<br>
1) Create a folder named 'data' and download the .fq files from: https://www.ebi.ac.uk/ena/browser/view/SRR9873306
<br>
2)Create env.yaml file with content:
<br>


![Screenshot 2024-03-21 012747](https://github.com/Isha-Guptaa/nextflow_variant_calling_conda/assets/152583125/05373bda-c49f-40fb-ba44-c10ee7348722)


<br>
3)Given the env.yml recipe file, the environment can be created using the command shown below:
<br>
conda env create --file env.yml
<br>
4)Check if the environment was created successfully with the command shown below:
<br>
conda env list
<br>


![image](https://github.com/Isha-Guptaa/nextflow_fastqc_conda/assets/152583125/7ad19de4-d4cb-4f3f-b2ca-21c5cebe5e49)


br>
5)Run:
<br>
nextflow run vc.nf -with-conda /home/ishagupta/anaconda3/envs/nf_demo
