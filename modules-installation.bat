@echo off
if %OS% == Windows_NT goto WINDOWS
then
:
## Hack to make a cross-OS compatible script
fi 2> /dev/null

# ------------------------------------------------------------------------------
# Unix execution
# ------------------------------------------------------------------------------

echo "INSTALLING MODULES"

conda install -c conda-forge -y nodejs 
conda install -c conda-forge -y ipywidgets
jupyter labextension install -y @jupyter-widgets/jupyterlab-manager

echo " All MODULES ARE INSTALLED"

exit

# ------------------------------------------------------------------------------
# Windows execution
# ------------------------------------------------------------------------------

:WINDOWS
@echo off

echo INSTALLING MODULES

conda install -c conda-forge -y nodejs 
conda install -c conda-forge -y ipywidgets
jupyter labextension install -y @jupyter-widgets/jupyterlab-manager

echo All MODULES ARE INSTALLED

# ------------------------------------------------------------------------------
