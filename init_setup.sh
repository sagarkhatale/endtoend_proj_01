echo [$(date)]: "START" 

echo [$(date)]: "creating env with python 3.8 version" 

conda create --prefix ./env python=3.8 -y

echo [$(date)]: "activating the environment" 

source activate ./env

echo [$(date)]: "installing the dev requirements" 

if ! test -f ./requirements.txt;
then
    touch ./requirements.txt
    pip install -r requirements.txt
fi

echo [$(date)]: "END" 
