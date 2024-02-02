import spacy
        
en_tok = spacy.load('en_core_web_sm')
sv_tok = spacy.load('sv_core_news_sm')
        
# create vocab dictionaries
en_tok_to_id = {}
sv_tok_to_id = {}

# read vocab file
with open('vocab.en', 'r', encoding='utf-8') as f:
    for line in f:
        line = line.strip().split()
        en_tok_to_id[line[1]] = int(line[0])
        
with open('vocab.sv', 'r', encoding='utf-8') as f:
    for line in f:
        line = line.strip().split()
        sv_tok_to_id[line[1]] = int(line[0])

# get lines of bitext
en_lines = open('bitext.en', 'r', encoding='utf-8').readlines()
sv_lines = open('bitext.sv', 'r', encoding='utf-8').readlines()

num_lines = 0

with open('bitext.encoded', 'w+', encoding='utf-8') as g:
    for i in range(len(en_lines)):
        
        # split lines into tokens
        en_tokens = [token.text for token in en_tok(en_lines[i].strip())]
        sv_tokens = [token.text for token in sv_tok(sv_lines[i].strip())]
        
        # convert tokens to ids
        en_ids = [str(en_tok_to_id[token]) for token in en_tokens]
        sv_ids = [str(sv_tok_to_id[token]) for token in sv_tokens]
        
        # write ids to file
        # if len(en_ids) == 0 or len(sv_ids) == 0:
        #     continue
        g.write('1' + '\n')
        g.write(' '.join(en_ids) + '\n')
        g.write(' '.join(sv_ids) + '\n')
            
        num_lines += 1
        
        if num_lines % 100 == 0:
            print(f'Processed {num_lines} lines')