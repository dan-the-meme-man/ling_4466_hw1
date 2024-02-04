file_pairs = (
    ('dev_pos_bitext.en', 'bitext.en'),
    ('dev_pos_bitext.sv', 'bitext.sv')
)

for file_pair in file_pairs:
    with open(file_pair[0], 'r', encoding='utf-8') as f:
        lines = f.readlines()
        with open(file_pair[1], 'a+', encoding='utf-8') as f:
            for line in lines:
                f.write(line)