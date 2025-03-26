#! /bin/bash
export MATTERPORT_DATA_DIR=/path/to/data/v1/scans
export MATTERPORT_SIMULATOR_DIR=/path/to/Matterport3DSimulator
export PROJECT_DIR=/path/to/your_project


docker run --gpus all --name myvln --shm-size=50g -it\
    --mount type=bind,source=$MATTERPORT_DATA_DIR,target=/root/mount/Matterport3DSimulator/data/v1/scans \
    --mount type=bind,source=$MATTERPORT_SIMULATOR_DIR,target=/root/mount/Matterport3DSimulator \
    --mount type=bind,source=$PROJECT_DIR,target=/root/mount/your_project \
    crpi-7t2wiqt0bx1eq6eo.cn-shanghai.personal.cr.aliyuncs.com/vln/vln_mp3d_habiat_pytorch:v2
