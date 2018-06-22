FROM debian
RUN apt-get update

RUN apt-get install -y wget

RUN wget http://coppeliarobotics.com/files/V-REP_PRO_EDU_V3_5_0_Linux.tar.gz

RUN tar -xf V-REP_PRO_EDU_V3_5_0_Linux.tar.gz

RUN apt-get install -y libglib2.0-0  libgl1-mesa-glx xcb "^libxcb.*" libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi6 libdbus-1-3 libfontconfig1

RUN echo 'export QT_DEBUG_PLUGINS=1' >> ~/.bashrc

RUN echo 'export PATH=/V-REP_PRO_EDU_V3_5_0_Linux/:$PATH' >> ~/.bashrc
