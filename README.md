# VLN Environment  
A repository for fast setup of ​**continuous & discrete** Vision-and-Language Navigation (VLN) environments.
ubuntu 20.04 & cuda 11.8 & torch 2.0.0 & Matterport3DSimulator & habitat 

---

## Quick Start  

### 1.Prepare

#### (1) Download Datasets  
    
Automatically download and extract datasets to the correct path:  

- ​**Discrete Environment**:  
  ```bash  
  python download_mp.py -o data --type matterport_skybox_images undistorted_camera_parameters --scans scans.txt  
  ```  

- ​**Continuous Environment**:  
  ```bash  
  python download_mp.py -o data --task_data habitat --scans scans.txt  
  ```  
#### (2) Download Matterport3Dsimulator_opencv4 folder from [Mercy2Green](https://github.com/Mercy2Green/MatterSim_BEVBert_Docker.git) (Discrete Environment)


---

### 2. Docker Setup  
Pull the pre-built Docker image from shuishui's Aliyun Registry:  
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

### 5. MatterSim build & test (Discrete Environment)

- build
  
```
cd /root/mount/Matterport3DSimulator
mkdir build && cd build
cmake -DEGL_RENDERING=ON ..
make
cd ../
```
- test
  
 ```
./build/tests ~Timing
```
If all the test is passed, which means you will see only green without any red errors.


<small>**If this repo saved you 3 hours of setup time, please give it a ⭐️ star—we’d love your support!** *(✧ω✧)*</small>
---

## Acknowledgments  
Thanks to:  
- [Matterport3DSimulator](https://github.com/peteanderson80/Matterport3DSimulator) for 3D environment data.  
- [Habitat-Lab](https://github.com/facebookresearch/habitat-lab) for simulation tools.  
- [PyTorch](https://pytorch.org) and [Docker](https://www.docker.com) for technical infrastructure.
- [Mercy2Green](https://github.com/Mercy2Green/MatterSim_BEVBert_Docker.git) for the basic environment setup.
