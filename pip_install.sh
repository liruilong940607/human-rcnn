
virtualenv --no-site-packages --python=python3.5 env
source env/bin/activate

pip install numpy torchvision_nightly
# pip install torch_nightly -f https://download.pytorch.org/whl/nightly/cu100/torch_nightly.html
pip install ~/dependence/torch_nightly-1.0.0.dev20190330-cp35-cp35m-linux_x86_64.whl
pip install -r requirements.txt
pip install ipython
pip install ninja yacs cython matplotlib tqdm opencv-python

pip install jupyterlab

cd ~/github-public/cocoapi/PythonAPI/
python setup.py build_ext install
cd -

cd ~/nas/github/apex/
python setup.py install
cd -

python setup.py build develop

