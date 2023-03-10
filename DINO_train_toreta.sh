coco_path=$1
model_path=$2
python main.py \
	--output_dir logs/DINO/R50-MS4 -c config/DINO/DINO_4scale_2class.py --coco_path $coco_path --pretrain_model_path $model_path --finetune_ignore label_enc.weight class_embed\
	--options dn_scalar=100 embed_init_tgt=TRUE \
	dn_label_coef=1.0 dn_bbox_coef=1.0 use_ema=False \
	dn_box_noise_scale=1.0
