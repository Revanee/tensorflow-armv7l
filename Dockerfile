FROM python:3.5.9-buster 

RUN apt-get update

# Dependencies for building SciPy
RUN apt-get install -y python3-scipy
RUN apt-get install -y libblas-dev liblapack-dev
RUN apt-get install -y libatlas-base-dev gfortran

RUN python3 -m pip install --upgrade pip

# Dependencies for building h5py
RUN apt-get install -y pkg-config libhdf5-dev

RUN pip3 install https://storage.googleapis.com/tensorflow/raspberrypi/tensorflow-2.2.0-cp35-none-linux_armv7l.whl
