# HW 1 - LING 4466

## Train GIZA++

### Training data GIZA++ made using `plain2snt.out`

`bitext.sv_bitext.en.snt`: Sentence pairs encoded and ready to be processed by GIZA++ as the -C parameter.

`bitext.en.vcb` and `bitext.sv.vcb`: Vocabulary files for GIZA++. (-S and -T respectively).

### Training data I made using `encode_bitext.py` and `make_vocab.py`

`bitext.encoded`: Sentence pairs encoded and ready to be processed by GIZA++ as the -C parameter.

`vocab.en` and `vocab.sv`: Vocabulary files for GIZA++. (-S and -T respectively).

### Alignment files made from GIZA++'s training data (DELIVERABLE)

`giza_out_giza.A3.final` and `giza_out_giza.A3.final`

### Alignment files made from my training data (DELIVERABLE)

`giza_out_me.A1.15` and `giza_out_me.A3.final`

## Project POS Alignments

### Using GIZA++'s training data (DELIVERABLE)

`sv_lines_giza.A1.15.conllu` and `sv_lines_giza.A3.final.conllu`: POS tagged Swedish sentences using
GIZA++'s alignment files trained on `plain2snt.out`'s outputs. A1 is model 1 and A3 is model 4.

### Using my own training data (DELIVERABLE)

`sv_lines_me.A1.15.conllu` and `sv_lines_me.A3.final.conllu`: The same using alignment files trained on data I produced from the bitext with Python.

## Generate New Data

### Machine translation output (DELIVERABLE)

`en_to_sv.py` translates the English sentences from `dev_pos_bitext.en` and writes them to `dev_pos_bitext.sv`.

`append_bitext.py` appends the lines to `bitext.en` and `bitext.sv`.

The new bitext files are then encoded by the same scripts as before and stored in `bitext_updated.encoded`, `vocab_updated.en` and `vocab_updated.sv`.

### New alignment files (DELIVERABLE)

I then trained GIZA++ on the new data and produced alignment files `giza_out_giza_updated.A1.15` and `giza_out_giza_updated.A3.final` as well as `giza_out_me_updated.A1.15` and `giza_out_me_updated.A3.final`.

### How the scores have changed (DELIVERABLE)

| Utterance Number | GIZA++ data, Model 1 | GIZA++ data, Model 4 | My data, Model 1 | My data, Model 4 |
| --- | --- | --- | --- | --- |
| 1 | 0.244988 > 0.244811 | 0.00734341 > 0.00683892 | 0.245684 < 0.245824 | 0.0083406 > 0.00816456 |
| 2 | 0.393058 < 0.397769 | 0.00320917 < 0.00451695 | 0.201397 < 0.207022 | 0.00329119 < 0.00335051 |
| 3 | 5.20368e-09 > 4.50318e-09 | 1.61314e-18 > 1.48477e-18 | 4.09999e-10 < 4.46734e-10 | 2.58669e-19 < 6.2606e-19 |
| 4 | 0.000158752 > 0.000143611 | 2.21299e-13 > 4.02644e-15 | 2.48649e-06 < 1.39426e-05 | 1.55988e-13 < 3.54814e-13 |
| 5 | 0.0022775 < 0.00235683 | 1.22956e-06 > 8.59797e-07 | 0.00115612 > 0.0011415 | 1.6848e-07 > 5.92123e-08 |
| 6 | 5.75548e-10 < 8.06982e-10 | 6.24566e-30 > 3.42322e-30 | 7.39493e-11 > 7.06767e-11 | 3.16308e-24 < 3.99663e-24 |
| 7 | 5.16971e-12 < 1.49735e-11 | 2.06727e-33 > 5.21437e-33 | 1.41256e-14 < 5.83438e-14 | 1.26987e-34 > 1.51025e-37 |
| 8 | 1.07879e-08 > 1.02923e-08 | 1.34333e-24 > 6.70286e-25 | 1.27831e-08 > 5.89578e-09 | 1.43434e-27 > 6.53646e-28 |
| 9 | 6.10403e-10 < 8.58719e-10 | 4.29324e-30 > 2.46567e-30 | 6.98895e-11 > 5.87096e-11 | 1.88938e-24 < 2.1238e-24 |
| 10 | 9.46968e-08 < 1.01487e-07 | 1.32843e-20 > 1.09013e-20 | 7.24478e-09 > 5.7993e-09 | 1.24263e-17 > 1.23484e-17 |

Most of the changes seem pretty insignificant, and it is hard to conclude much.

### POS tagged Swedish dev set sentences (DELIVERABLE)

`sv_lines_giza_updated.A1.15.conllu` and `sv_lines_giza_updated.A3.final.conllu` are the POS tagged Swedish sentences using the new alignment files trained on GIZA++'s training data and dev data.

`sv_lines_me_updated.A1.15.conllu`, and `sv_lines_me_updated.A3.final.conllu` are the same using the new alignment files trained on data I produced from the bitext with Python.

## Proposed Improvements

### Improvement 1

As can be seen throughout the preceding sections, I ran the models not only on the data as tokenized by GIZA++'s built in tokenization tool `plain2snt.out`, but I also made similar files on my own using `spaCy`'s English and Swedish pretrained tokenizers. I then trained GIZA++ on both sets of data and compared the results. The results were not very different, but I think that there is merit to trying, especially because it is not terribly difficult to build a rule-based tokenizer for a low-resource language that may give more sensible tokens than a simple whitespace tokenizer.

### Improvement 2

I tried out Awesome Align to see if it performs better than GIZA++. `make_aa_input.py` puts the bitext in the correct format (`awesome_align_input.txt`).
