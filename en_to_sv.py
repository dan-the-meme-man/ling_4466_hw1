# Use a pipeline as a high-level helper
from transformers import pipeline

pipe = pipeline("translation", model="Helsinki-NLP/opus-mt-en-sv")

with open('dev_pos_bitext.en', 'r', encoding='utf-8') as f:
    lines = f.readlines()
    with open('dev_pos_bitext.sv', 'w+', encoding='utf-8') as g:
        for i in range(len(lines)):
            g.write(pipe(lines[i])[0]['translation_text'] + '\n')
            if i == 100:
                print(f'{i} lines done.')