# Getting started

To run with X11 and TPU support:
`docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -it --device /dev/video0 -v /dev/bus/usb:/dev/bus/usb --privileged image`
