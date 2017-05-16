# About

This repository is intended for preparing a docker image with the
pre-compiled command line tools provided by DCMTK.

Updates to this repository should automatically trigger an update of the
docker image hosted on Docker Hub here: 

https://hub.docker.com/r/qiicr/docker-dcmtk-cli/

# Usage

docker run -v<HOST DIRECTORY>:<CONTAINER DIRECTORY> qiicr/docker-dcmtk-cli <dcmtk tool> <arguments>

Recognized dcmtk commands: img2dcm getscu dcmdjpls dcmftest wltest dcmsend dcmrecv dcmpsmk drtdump dcmqridx dcmdump findscu dcmpssnd dcm2xml wlmscpfs dcmqrscp dcmdrle dcmiod_tests dcmodify dcmprscu msgserv dconvlum dsrdump movescu dcmp2pgm dcmmkcrv dcmquant xml2dcm storescu dcmscale dcm2pnm drttest dcmsr_tests storescp dcmdjpeg dcmpsrcv dcmsign ofstd_tests echoscu pdf2dcm dcmqrti dcmrt_tests dcmcjpls xml2dsr dcmcrle dsr2xml dcm2pdf dump2dcm dsr2html termscu dcmpsprt dcm2json dcmgpdir dcmmklut dcmj2pnm dcmconv dcmprscp dcod2lum dcmdspfn dcmcjpeg dcmnet_tests mkreport dcmdata_tests dcmmkdir dcml2pnm dcmpschk dcmseg_tests

# Support

Report issues here: https://github.com/QIICR/docker-dcmtk-cli/issues/new

# Acknowledgments

Support of National Cancer Institute via award U24 CA180918 (http://qiicr.org) 
is gratefully acknowledged.
