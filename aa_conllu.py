from io import open

from conllu import parse, TokenList

aa_inputs = []
aa_outputs = []

with open('awesome_align_input.txt', 'r', encoding='utf-8') as f:
    lines = f.readlines()
    for line in lines:
        split = line.split(' ||| ')
        en = split[0]
        sv = split[1]
        aa_inputs.append((en.split(), sv.split()))

with open('awesome_align_output.txt', 'r', encoding='utf-8') as f:
    lines = f.readlines()
    for line in lines:
        clean = line.strip()
        token_strs = clean.split()
        token_pairs = [token_str.split('-') for token_str in token_strs]
        aa_outputs.append(token_pairs)

updated = False # run with False to do train, True to do dev

pfx = 'aa'
if updated:
    pfx += '_updated'
    dev = open('en_lines-ud-dev.conllu', 'r', encoding='utf-8').read()
    en_pos_tagged_data = parse(dev)
else:
    train = open('en_lines-ud-train.conllu', 'r', encoding='utf-8').read()
    en_pos_tagged_data = parse(train)
    
with open(f'sv_lines_{pfx}.conllu', 'w+', encoding='utf-8') as f:
    
    errors = 0
    
    for i in range(len(en_pos_tagged_data)):
        
        if updated:
            # from CoNLL-U tagged data
            example = en_pos_tagged_data[-i-1]
            
            # from AA output
            aa_output = aa_outputs[len(aa_outputs)-i-1]
            
            # from AA input
            english = aa_inputs[len(aa_outputs)-i-1][0]
            swedish = aa_inputs[len(aa_outputs)-i-1][1]
            
        else:
            # from CoNLL-U tagged data
            example = en_pos_tagged_data[i]
            
            # from AA output
            aa_output = aa_outputs[i]
            
            # from AA input
            english = aa_inputs[i][0]
            swedish = aa_inputs[i][1]
        
        # get english POS tags
        en_pos = [token['upos'] for token in example]
        
        # prepare a list of Swedish POS tags
        sv_pos = [''] * len(swedish)
        
        # try to map every swedish token to an english POS tag
        # using the mapping of english tokens to POS tags
        for j in range(len(english)):
            try:
                english_pos = en_pos[j]
            except:
                errors += 1
                break # we've exhausted the English POS tags
            swedish_indices = [int(pair[1]) for pair in aa_output if pair[0] == str(j)]
            for swedish_index in swedish_indices:
                sv_pos[swedish_index] = english_pos
                
        # guess NOUN for everything else
        for j in range(len(sv_pos)):
            if sv_pos[j] == '':
                sv_pos[j] = 'NOUN'
    
        # TODO: write to file in CoNLL-U format
        token_list = TokenList()
        for j in range(len(sv_pos)):
            token_list.append(
                {
                    'id': j+1,
                    'form': swedish[j],
                    'upos': sv_pos[j]
                }
            )
            
        f.write(token_list.serialize())