#!/bin/bash
export PYTHONPATH=/workspace:$PYTHONPATH
mpirun -np 8 -bind-to none -map-by slot -x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH -x PATH -mca pml ob1 -mca btl ^openib python train.py --cfg "/workspace/experiments/segmentation/tgs_salt/horovod/configs/unet.yaml"