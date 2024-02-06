DATA_FILE=../awesome_align_input.txt
MODEL_NAME_OR_PATH=bert-base-multilingual-cased
OUTPUT_FILE=../awesome_align_output.txt

CUDA_VISIBLE_DEVICES=0 python3 run_align.py \
    --output_file=$OUTPUT_FILE \
    --model_name_or_path=$MODEL_NAME_OR_PATH \
    --data_file=$DATA_FILE \
    --extraction 'softmax' \
    --batch_size 32