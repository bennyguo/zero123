# put checkpoint_liberty_with_aug.pth in ~/.cache/torch/hub/checkpoints/
# put ViT-L-14.pt in ~/.cache/clip
python main.py \
    -t \
    --base configs/sd-objaverse-finetune-c_concat-256.yaml \
    --gpus 0,1,2,3,4,5,6,7 \
    --scale_lr False \
    --num_nodes 1 \
    --seed 42 \
    --check_val_every_n_epoch 10 \
    --finetune_from sd-image-conditioned-v2.ckpt
    