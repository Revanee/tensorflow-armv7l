FROM balenalib/raspberrypi3

# Install Python
RUN apt-get update && apt-get install -y python3-pip python3
# Install OpenCV dependencies
RUN apt-get install -y python-opencv libatlas-base-dev libjasper-dev libqtgui4 python3-pyqt5 libqt4-test libhdf5-103
# Install OpenCV Python modules
RUN pip3 install --upgrade pip
RUN pip3 install --prefer-binary scikit-build opencv-python opencv-contrib-python

# Install TensorFlow
RUN pip3 install --prefer-binary tensorflow

# Install TensorFlow Lite interpreter
RUN pip3 install https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp37-cp37m-linux_armv7l.whl

# Install Coral TPU dependencies
RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update
RUN apt-get install -y libedgetpu1-std
ENV LD_PRELOAD=/usr/lib/arm-linux-gnueabihf/libatomic.so.1.2.0
