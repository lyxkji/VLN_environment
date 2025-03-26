# VLN_environment
A repository for fast setup of ​continuous &amp; discrete Vision-and-Language Navigation (VLN) environments.

- Pull docker from my aliyun remote docker registry

  `docker pull crpi-7t2wiqt0bx1eq6eo.cn-shanghai.personal.cr.aliyuncs.com/vln/vln_mp3d_habiat_pytorch:v2`
- Docker run to create your own container
  
  First set environment variables to your local paths in run.sh like this.

  `
  #! /bin/bash `

  `
  export MATTERPORT_DATA_DIR=/home/lyx/dataset/data/v1/scans `

  `
  export MATTERPORT_SIMULATOR_DIR=/home/lyx/Matterport3DSimulator `

  `
  export PROJECT_DIR=/home/lyx/my_project `

  `
  export HABITAT_DATA_DIR=/home/lyx/dataset/v1/tasks/mp3d `
    
  
  Then run `bash run.sh`

  ps:

  If you only use a ​discrete action space environment

  run  `bash run_only_mp3D.sh`

  If you only use a ​continuous action space environment

  run  `bash run_only_habitat.sh`

  ---------------------------------------
  Thanks to Matterport3D/Habitat-Lab for simulations, and PyTorch/Docker for tech support.

  

  

