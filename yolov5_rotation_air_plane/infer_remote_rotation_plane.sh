
echo "------------1------------------"
echo $2
echo "------------2------------------"
echo $1
echo "------------3-------------------"
curPath=$(readlink -f "$(dirname "$0")")
echo $curPath
CUDA_VISIBLE_DEVICES=0 python3 $curPath/detect_rotation_sate.py \
--weights $curPath/weights/best_dang.pt $curPath/weights/bestguang1_0_15.pt $curPath/weights/bestguang1_0_7.pt $curPath/weights/bestguang1_0_8.pt $curPath/weights/bestguang1_1_2.pt $curPath/weights/bestbing1_0_13.pt $curPath/weights/bestbing1_0_12.pt $curPath/weights/bestyi1_1_0.pt $curPath/weights/shateB.pt \
--conf 0.001 \
--iou 0.65 \
--imgsz 4096  \
--overlap 0 \
--remote \
--save_json $2/aircraft_results.json \
--source $1  \
--annot_dir /$1/labelTxt 
#--device cpu 

#--nosave \
#--source /data/03_Datasets/CasiaDatasets/ShipOrigin/JL101K_PMS03_20200222111429_200022158_101_0013_001_L1/PAN/
#--source /data/03_Datasets/CasiaDatasets/Ship/SeaShip/image/
#--source /data/03_Datasets/CasiaDatasets/SeaShipOrigin/train
