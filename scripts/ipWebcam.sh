#! /bin/bash
gst-launch-1.0 souphttpsrc location=http://192.168.1.26:8080/videofeed \
                           is-live=true \
             ! multipartdemux \
             ! jpegdec \
             ! videoconvert \
             ! v4l2sink device=/dev/video0
