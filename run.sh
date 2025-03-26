#! /bin/bash
export MATTERPORT_DATA_DIR=/path/to/data/v1/scans
export MATTERPORT_SIMULATOR_DIR=/path/to/Matterport3DSimulator
export PROJECT_DIR=/path/to/your_project
export HABITAT_DATA_DIR=/path/to/v1/tasks/mp3d


docker run --gpus all --shm-size=50g -it\
    --mount type=bind,source=$MATTERPORT_DATA_DIR,target=/root/mount/Matterport3DSimulator/data/v1/scans \
    --mount type=bind,source=$MATTERPORT_SIMULATOR_DIR,target=/root/mount/Matterport3DSimulator \
    --mount type=bind,source=$PROJECT_DIR,target=/root/mount/your_project \
    --mount type=bind,source=$HABITAT_DATA_DIR,target=/root/mount/Matterport3DSimulator/data/scene_datasets/mp3d \
    myvln
