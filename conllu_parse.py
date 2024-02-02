from io import open
import re

from conllu import parse

def main():
    token_order_re = re.compile('\({ [0-9 ]*}\)')

    en_conllu = open('en_lines-ud-train.conllu', 'r', encoding='utf-8').read()
    en_pos_tagged_data = parse(en_conllu)

        # for i in range(0, len(lines), 3):
        #     swedish = lines[i-2].strip().split()
        #     english = lines[i-1]
    
    models = ('A1.15', 'A3.final')
    errors = dict.fromkeys(models, 0)

    for model in models:
        
        model_lines = open(f'giza_out.{model}', 'r', encoding='utf-8').readlines()
        
        with open(f'sv_lines_{model}.conllu', 'w+', encoding='utf-8') as f:        
            
            for i in range(len(en_pos_tagged_data)):
                
                example = en_pos_tagged_data[i]
                
                swedish = model_lines[3*i + 1].strip().split()
                
                english = model_lines[3*i + 2].strip()
                
                num_lists = re.findall(token_order_re, english)
                
                for j in range(len(num_lists)):
                    num_lists[j] = num_lists[j].split()[1:-1]
                    for k in range(len(num_lists[j])):
                        num_lists[j][k] = int(num_lists[j][k])
                
                english = re.sub(token_order_re, '', english)
                english = english.strip().replace('  ', ' ').split()[1:]
                
                en_pos = [token['upos'] for token in example]
                sv_pos = [''] * len(swedish)
                
                if i == 18:
                    print(f'English: {len(english)}')
                    print(english)
                    print()
                    
                    print(f'Num lists: {len(num_lists)}')
                    print(f'English POS: {len(en_pos)}')
                    print(en_pos)
                    print()
                    exit()
                    
                try:
                    assert len(en_pos) == len(english)
                except:
                    errors[model] += 1
                    continue
                
                for j in range(len(english)):
                    english_pos = en_pos[j]
                    swedish_indices = num_lists[j+1] # +1 because we start with NULL
                    for swedish_index in swedish_indices:
                        sv_pos[swedish_index-1] = english_pos # -1 because aligner starts at 1
                        
                # guess NOUN for everything else
                for j in range(len(sv_pos)):
                    if sv_pos[j] == '':
                        sv_pos[j] = 'NOUN'
                
                    
    print(errors)
                
                
                
if __name__ == '__main__':
    main()