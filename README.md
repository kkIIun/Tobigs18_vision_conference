# Tobigs18_vision_conference

* please git clone https://github.com/IDEA-Research/DINO.git
* DINO_4scale_2class.py -> /DINO/config/DINO
* DINO_train_toreta.sh -> /DINO/scripts
* inference_and_train_and_visualization.ipynb, main.py -> /DINO
* download dataset https://drive.google.com/drive/folders/1acu9vw0U4Xbsbe6pSbTkfZBk8V9AckRT?usp=sharing -> /DINO/toreta


## Installation
1. pip install pytorch torchvision
2. pip install -r requirements.txt
3. pip install -r requirements_bytetrack.txt ( if you inference tracking )
4. Compiling CUDA operators
```
cd models/dino/ops
python setup.py build install
cd ../../..
```

## Train
```
!bash scripts/DINO_train_toreta.sh "your toreta dataset path" "your pretrained model path"

ex) !bash scripts/DINO_train_toreta.sh "/content/drive/MyDrive/DINO/toreta" "/content/drive/MyDrive/DINO/checkpoint0033_4scale.pth"
```
