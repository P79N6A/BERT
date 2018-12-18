CUDA_VISIBLE_DEVICES="0,1" mpirun -np 2 \
 -H localhost:4 \
python test_wsdm_distributed_esim_bert.py \
 --eval_data_file "/data/xuht/wsdm19/test.csv" \
 --output_file "/data/xuht/wsdm19/interaction/dev.tfrecords" \
 --config_file "/data/xuht/bert/chinese_L-12_H-768_A-12/bert_config.json" \
 --init_checkpoint "/data/xuht/bert/chinese_L-12_H-768_A-12/bert_model.ckpt" \
 --result_file "/data/xuht/wsdm19/interaction/model_11_15/submission.csv" \
 --vocab_file "/data/xuht/bert/chinese_L-12_H-768_A-12/vocab.txt" \
 --label_id "/data/xuht/wsdm19/data/label_dict.json" \
 --train_file "/data/xuht/wsdm19/postprocess/data_12_6/interaction/train.tfrecords" \
 --dev_file "/data/xuht/wsdm19/postprocess/data_12_6/interaction/dev.tfrecords" \
 --max_length 64 \
 --model_output "/data/xuht/wsdm19/postprocess/data_12_6/interaction/model_12_7" \
 --gpu_id "0" \
 --epoch 10 \
 --num_classes 3 \
 --model_type "esim_bert" \
 --batch_size 32

