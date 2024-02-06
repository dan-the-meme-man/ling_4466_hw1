from spacy import load

en_tok = load('en_core_web_sm')
sv_tok = load('sv_core_news_sm')

en_lines = None
with open('bitext.en', 'r', encoding='utf-8') as f:
    en_lines = f.readlines()

sv_lines = None
with open('bitext.sv', 'r', encoding='utf-8') as f:
    sv_lines = f.readlines()
    
with open('awesome_align_input.txt', 'w+', encoding='utf-8') as f:
    for i in range(len(en_lines)):
        en_toks = [tok.text for tok in en_tok(en_lines[i].strip())]
        sv_toks = [tok.text for tok in sv_tok(sv_lines[i].strip())]
        f.write(f'{" ".join(en_toks)} ||| {" ".join(sv_toks)}\n')
        if i % 100 == 0:
            print(f'Processed {i} lines')