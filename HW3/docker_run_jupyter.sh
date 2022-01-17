#!/bin/bash

# Start anaconda container and run the jupyter notebook
echo 'Starting Jupyter notebook inside anaconda docker container'
docker run -ti -v $PWD:/opt/notebooks -p 5901:5901 continuumio/anaconda3 \
/bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks \
--ip='*' --port=5901 --no-browser --allow-root"
