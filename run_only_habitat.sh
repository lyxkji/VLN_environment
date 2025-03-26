#! /bin/bash
export PROJECT_DIR=/path/to/your_project
export HABITAT_DATA_DIR=/path/to/v1/tasks/mp3d


docker run --gpus all --name myvln --shm-size=50g -it\
    --mount type=bind,source=$PROJECT_DIR,target=/root/mount/your_project \
    --mount type=bind,source=$HABITAT_DATA_DIR,target=/root/mount/Matterport3DSimulator/data/scene_datasets/mp3d \
    crpi-7t2wiqt0bx1eq6eo.cn-shanghai.personal.cr.aliyuncs.com/vln/vln_mp3d_habiat_pytorch:v2
