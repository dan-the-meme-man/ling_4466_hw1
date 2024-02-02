import spacy
from collections import OrderedDict

for lang, tok_name in zip(('en', 'sv'), ('en_core_web_sm', 'sv_core_news_sm')):
    
    try:
        # load spacy models
        tok = spacy.load(tok_name)
    except:
        spacy.cli.download(tok_name)
        tok = spacy.load(tok_name)
    
    # get lines of bitext
    lines = open('bitext.' + lang, 'r', encoding='utf-8').readlines()
    
    vocab = OrderedDict()
    
    tok_to_id = {}
    
    num_lines = 0
    
    for line in lines:
        # split line into tokens
        tokens = [token.text for token in tok(line.strip())]
        
        # add tokens to vocab
        for token in tokens:
            vocab[token] = vocab.get(token, 0) + 1
            
        num_lines += 1
        
        if num_lines % 100 == 0:
            print('Processed {} lines'.format(num_lines))
            
    # sort lexicographically
    vocab = OrderedDict(sorted(vocab.items()))
            
    # write vocab to file
    with open('vocab.' + lang, 'w+', encoding='utf-8') as f:
        i = 1
        for key in vocab:
            f.write(str(i) + ' ' + key + ' ' + str(vocab[key]) + '\n')
            i += 1