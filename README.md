# VLN Environment  
A repository for fast setup of ​**continuous & discrete** Vision-and-Language Navigation (VLN) environments.

---

## Quick Start  

### 1. Download Datasets  
Automatically download and extract datasets to the correct path:  

- ​**Discrete Environment**:  
  ```bash  
  python download_mp.py -o data --type matterport_skybox_images undistorted_camera_parameters --scans scans.txt  
  ```  

- ​**Continuous Environment**:  
  ```bash  
  python download_mp.py -o data --task_data habitat --scans scans.txt  
  ```  

---

### 2. Docker Setup  
Pull the pre-built Docker image from Aliyun Registry:  
```bash  
docker pull crpi-7t2wiqt0bx1eq6eo.cn-shanghai.personal.cr.aliyuncs.com/vln/vln_mp3d_habitat_pytorch:v2  
```  

---

### 3. Run the Container  
1. ​**Set Environment Variables**  
   Edit `run.sh` to specify your local paths:  
   ```bash  
   #!/bin/bash  
   export MATTERPORT_DATA_DIR="/home/lyx/dataset/data/v1/scans"  
   export MATTERPORT_SIMULATOR_DIR="/home/lyx/Matterport3DSimulator"  
   export PROJECT_DIR="/home/lyx/my_project"  
   export HABITAT_DATA_DIR="/home/lyx/dataset/v1/tasks/mp3d"  
   ```  

2. ​**Start the Container**  
   ```bash  
   bash run.sh  
   ```  

---

### 4. Environment-Specific Scripts  
- ​**Discrete Action Space Only**:  
  ```bash  
  bash run_only_mp3d.sh  
  ```  

- ​**Continuous Action Space Only**:  
  ```bash  
  bash run_only_habitat.sh  
  ```  

---

## Acknowledgments  
Thanks to:  
- [Matterport3DSimulator](https://github.com/peteanderson80/Matterport3DSimulator) for 3D environment data.  
- [Habitat-Lab](https://github.com/facebookresearch/habitat-lab) for simulation tools.  
- [PyTorch](https://pytorch.org) and [Docker](https://www.docker.com) for technical infrastructure.  
