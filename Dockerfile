FROM fedorov/docker-centos-build
MAINTAINER http://github.com/QIICR

VERSION=DCMTK-3.6.1_20161102

WORKDIR /usr/src
RUN git clone https://github.com/qiicr/docker-dcmtk-cli.git

RUN git clone git://git.dcmtk.org/dcmtk && \
  cd dcmtk && git checkout ${VERSION} && \
  mkdir dcmtk-build && \
  cd dcmtk-build && \
  cmake ../dcmtk && \
  make 

RUN  chmod a+x /usr/src/docker-dcmtk-cli/docker_entry.sh

ENTRYPOINT ["/bin/bash","/usr/src/docker-dcmtk-cli/docker_entry.sh"]
