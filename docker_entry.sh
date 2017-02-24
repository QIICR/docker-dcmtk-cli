#!/bin/bash
NAME=DCMTK
CLI_DIR=/usr/src/dcmtk-build/bin

if [ -e $CLI_DIR ]; then

  CLIs=`cd ${CLI_DIR};find . -type f -perm 755 | cut -d'/' -f 2 | tr '\n' ' '`

  requestedCLI=${CLI_DIR}/${1}

  if [ $# -lt 1 ]; then
    echo "Usage: docker run -v<HOST DIRECTORY>:<CONTAINER DIRECTORY> qiicr/docker-dcmtk-cli <dicom3tools tool> <arguments>"
    echo "Recognized ${NAME} commands: ${CLIs}"
  else
    if [ -x $requestedCLI ]; then
      $requestedCLI ${@:2}
    else
      echo "Command not recognized! Recognized dicom3tools commands: ${CLIs}"
    fi
  fi
else
  echo $CLI_DIR does not exist!
fi
