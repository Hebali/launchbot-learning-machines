FROM tensorflow/tensorflow:0.10.0

RUN pip install scikit-learn
RUN pip install keras

# launchbot-specific labels
LABEL name.launchbot.io="Learning Machines Examples"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL description.launchbot.io="Learning Machines example projects."
LABEL 8888.port.launchbot.io="Jupyter Notebook"
LABEL 6006.port.launchbot.io="Tensorflow Dashboard"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888
EXPOSE 6006

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*
