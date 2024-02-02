from io import open
import re

from conllu import parse

def main():
    token_order_re = re.compile('\({ [0-9 ]*}\)')

    en_conllu = open('en_lines-ud-train.conllu', 'r', encoding='utf-8').read()
    en_pos_tagged_data = parse(en_conllu)

    # vocab/encoding by GIZA's plain2snt.out or by my Python scripts
    pfx = 'giza'
    #pfx = 'me'
    
    models = (pfx + '.A1.15', pfx + '.A3.final')
    errors = dict.fromkeys(models, 0)

    # for each model (1 and 4)
    for model in models:
        
        # read the GIZA++ output
        model_lines = open(f'giza_out_{model}', 'r', encoding='utf-8').readlines()
        
        with open(f'sv_lines_{model}.conllu', 'w+', encoding='utf-8') as f:        
            
            for i in range(len(en_pos_tagged_data)):
                
                # from CoNLL-U tagged data
                example = en_pos_tagged_data[i]
                
                # from GIZA++ output
                swedish = model_lines[3*i + 1].strip().split()
                
                # from GIZA++ output
                english = model_lines[3*i + 2].strip()
                
                # get the indices where tokens should be mapped
                num_lists = re.findall(token_order_re, english)
                
                # process and cast the num lists to integers
                for j in range(len(num_lists)):
                    num_lists[j] = num_lists[j].split()[1:-1]
                    for k in range(len(num_lists[j])):
                        num_lists[j][k] = int(num_lists[j][k])
                
                # remove the token order annotations
                english = re.sub(token_order_re, '', english)
                
                # get english tokens
                english = english.strip().replace('  ', ' ').split()[1:]
                
                # get english POS tags
                en_pos = [token['upos'] for token in example]
                
                # prepare a list of Swedish POS tags
                sv_pos = [''] * len(swedish)
                
                # can check where CoNLL-U and GIZA++ data diverge in number of tokens
                if i == 18 and 'A1.15' in model:
                    print(f'English tokens: {len(english)}')
                    print(english)
                    print()
                    print(f'English POS tags: {len(en_pos)}')
                    print(en_pos)
                    print()
                
                # try to map every swedish token to an english POS tag
                # using the mapping of english tokens to POS tags
                for j in range(len(english)):
                    try:
                        english_pos = en_pos[j]
                    except:
                        errors[model] += 1
                        break # we've exhausted the English POS tags
                    swedish_indices = num_lists[j+1] # +1 because we start with NULL
                    for swedish_index in swedish_indices:
                        sv_pos[swedish_index-1] = english_pos # -1 because aligner starts at 1
                        
                # guess NOUN for everything else
                for j in range(len(sv_pos)):
                    if sv_pos[j] == '':
                        sv_pos[j] = 'NOUN'
            
                # TODO: write to file in CoNLL-U format
            
    print(errors)
                  
if __name__ == '__main__':
    main()