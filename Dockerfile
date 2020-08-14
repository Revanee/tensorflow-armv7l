FROM raspbian/stretch

# Install Python
RUN apt-get update && apt-get install -y python3-pip python3
# Install OpenCV dependencies
RUN apt-get install -y python-opencv libatlas-base-dev libjasper-dev libqtgui4 python3-pyqt5 libqt4-test libhdf5-100
# Install OpenCV Python modules
RUN pip3 install --upgrade pip
RUN pip3 install --prefer-binary scikit-build opencv-python opencv-contrib-python

# Install TensorFlow
RUN pip3 install --prefer-binary tensorflow
