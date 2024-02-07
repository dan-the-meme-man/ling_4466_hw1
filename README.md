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

I employed the `conllu` Python library to read and write CoNLL-U files (Stenström 2023).

### Using GIZA++'s training data (DELIVERABLE)

`sv_lines_giza.A1.15.conllu` and `sv_lines_giza.A3.final.conllu`: POS tagged Swedish sentences using
GIZA++'s alignment files trained on `plain2snt.out`'s outputs. A1 is model 1 and A3 is model 4.

### Using my own training data (DELIVERABLE)

`sv_lines_me.A1.15.conllu` and `sv_lines_me.A3.final.conllu`: The same using alignment files trained on data I produced from the bitext with Python.

## Generate New Data

### Machine translation output (DELIVERABLE)

`en_to_sv.py` translates the English sentences from `dev_pos_bitext.en` and writes them to `dev_pos_bitext.sv`. This is done using the OPUS-MT API (Tiedemann and Thottingal 2020).

`append_bitext.py` appends the lines to `bitext.en` and `bitext.sv`.

The new bitext files are then encoded by the same scripts as before and stored in `bitext_updated.encoded`, `vocab_updated.en` and `vocab_updated.sv`.

### New alignment files (DELIVERABLE)

I then trained GIZA++ on the new data and produced alignment files `giza_out_giza_updated.A1.15` and `giza_out_giza_updated.A3.final` as well as `giza_out_me_updated.A1.15` and `giza_out_me_updated.A3.final`.

### How the scores have changed (DELIVERABLE)

| Utterance Number | GIZA++ data, Model 1 | GIZA++ data, Model 4 | My data, Model 1 | My data, Model 4 |
| --- | --- | --- | --- | --- |
| 1 | 2.450e-1 > 2.448e-1 | 7.343e-3 > 6.839e-3 | 2.457e-1 < 2.458e-1 | 8.340e-3 > 8.165e-3 |
| 2 | 3.931e-1 < 3.978e-1 | 3.209e-3 < 4.517e-3 | 2.014e-1 < 2.070e-1 | 3.291e-3 < 3.351e-3 |
| 3 | 5.204e-9 > 4.503e-9 | 1.613e-18 > 1.485e-18 | 4.100e-10 < 4.467e-10 | 2.587e-19 < 6.261e-19 |
| 4 | 1.588e-4 > 1.436e-4 | 2.213e-13 > 4.026e-15 | 2.486e-6 < 1.394e-5 | 1.560e-13 < 3.548e-13 |
| 5 | 2.278e-3 < 2.357e-3 | 1.230e-6 > 8.598e-7 | 1.156e-3 > 1.142e-3 | 1.685e-7 > 5.921e-8 |
| 6 | 5.755e-10 < 8.070e-10 | 6.246e-30 > 3.423e-30 | 7.395e-11 > 7.068e-11 | 3.163e-24 < 3.997e-24 |
| 7 | 5.170e-12 < 1.497e-11 | 2.067e-33 > 5.214e-33 | 1.412e-14 < 5.834e-14 | 1.270e-34 > 1.510e-37 |
| 8 | 1.079e-8 > 1.029e-8 | 1.343e-24 > 6.703e-25 | 1.278e-08 > 5.896e-09 | 1.434e-27 > 6.536e-28 |
| 9 | 6.104e-10 < 8.587e-10 | 4.293e-30 > 2.466e-30 | 6.989e-11 > 5.871e-11 | 1.889e-24 < 2.124e-24 |
| 10 | 9.470e-8 < 1.015e-7 | 1.328e-20 > 1.090e-20 | 7.2448e-09 > 5.7993e-09 | 1.243e-17 > 1.235e-17 |

23 alignment scores decreased with the introduction of the dev data, while the other 17 alignment scores increased. My intuition is that none of these changes reflect anything truly significant; a strong trend of increasing alignment scores would indicate that the dev set helped the model generalize better, while a strong trend of decreasing alignment scores would indicate that the dev set probably hurt the model's ability to fit the training data as well as it was fitting before. However, the changes are not very strong in either direction, and it is hard to conclude much from them.

### POS tagged Swedish dev set sentences (DELIVERABLE)

`sv_lines_giza_updated.A1.15.conllu` and `sv_lines_giza_updated.A3.final.conllu` are the POS tagged Swedish sentences using the new alignment files trained on GIZA++'s training data and dev data.

`sv_lines_me_updated.A1.15.conllu`, and `sv_lines_me_updated.A3.final.conllu` are the same using the new alignment files trained on data I produced from the bitext with Python.

## Proposed Improvements

### Improvement 1 (DELIVERABLE)

As can be seen throughout the preceding sections, I ran the models not only on the data as tokenized by GIZA++'s built in tokenization tool `plain2snt.out`, but I also made similar files on my own using `spaCy`'s English and Swedish pretrained tokenizers. I then trained GIZA++ on both sets of data and compared the results. The results were not very different, but I think that there is merit to trying, especially because it is not terribly difficult to build a rule-based tokenizer for a low-resource language that may give more sensible tokens than a simple whitespace tokenizer.

### Improvement 2 (DELIVERABLE)

I tried out Awesome Align to see if it performs better than GIZA++. `make_aa_input.py` puts the bitext in the correct format (`awesome_align_input.txt`). I then ran Awesome Align on the data and produced `awesome_align_output.txt`. I then used `aa_output_to_conllu.py` to convert the output to a CoNLL-U file. The results were not very different from GIZA++'s, but it is worth trying out different tools to see if they perform better.

It is hard to evaluate the performance of the different tools, but given my very cursory knowledge of Swedish, and glancing at the CoNLL-U files from both GIZA++ and Awesome Align, it seems that Awesome Align is much better. This makes a lot of sense, as GIZA++ is quite old and Awesome Align is a more modern tool, which appears to rely on neural methods.

## Write-up (DELIVERABLE)

### Failures of statistical word aligners

Statistical word aligners cannot take semantic information into account. They are unable to recognize similarity between strings that might indicate cognates, or to generalize meanings and translations betweens sequences in such a way that meanings can be successfully mapped to one another between languages consistently. Instead, they simply use co-ocurrence data to try and predict which words in one language correspond to words in another language, purely based on the linear order of parallel sentences and frequencies of co-occurrence.

### Systematic problems in the silver dataset

The silver dataset has systematic problems stemming from the differences between Swedish and English. For instance, Swedish definite articles are suffixes on nouns, but English definite articles are treated as separate words, and come before the noun they determine. So, when translating "the" into Swedish, it is often the case that there is a many-to-one mapping of multiple English words to one Swedish word. Since the two English tokens will have different parts of speech (DET and NOUN), it is hard to know the correct prediction for the corresponding Swedish word, and statistical aligners will simply have to guess. More generally, when a many-to-one or one-to-many mapping occurs between two languages, it will be non-trivial to project POS tags. Decisions like whether to ignore some tags, invent new ones artificially, or try to predict a most probable tag in some other way will all come into play.

### Potential fixes

The clearest solution is to employ more advanced methods now that we have them. Neural methods are much better than statistical, purely pattern-recognizing methods at pretty much all NLP tasks in this day and age. They can take advantage of more complex distributional relationships that are too nuanced for a statistical aligner to grasp. They can also make use of annotations very easily, if there is a reasonable way to encode them for the model to use. Additionally, in a low resource setting, transfer learning from high-resource languages has been shown to be somewhat effective.

If we wish to salvage word aligners, some improvements can still be made. The alignments produced by Awesome Align seem to be better, though it is difficult to know for sure without a metric and gold labels for evaluation. That being said, it is clear that Awesome Align relies on pretrained multilingual LLMs to make choices about aligning the tokens, so it may not be as useful in a low-resource setting, especially for a language which is not (or whose typology is not) well-represented in the selected LLM.

Other improvements might involve using dictionary-based methods to shuffle some of the alignments around after the aligner produces an initial pass. This could prevent words that co-occur in the target language being aligned with the incorrect counterparts in the source language, or prevent several words being aligned to the same word when one should be aligned to NULL, etc. A final improvement might be developing word-aligners that are typologically aware. For instance, a word-aligner that is specially designed to map SVO to SOV languages, or SVO to SVO, or other combinations. This would be a very difficult task, but it would be a very useful tool for low-resource languages.

### Potential issues in dealing with an English-Russian parallel corpus

The assumption that words will generally or consistently correspond to one another across languages is also fundamentally flawed. For instance, consider the ways that the word "go" is translated into Russian. Russian verbs come in aspectual pairs, or, for verbs involving motion, directionality pairs. To translate "go," at least eight different verbs could be used, depending on mode of transport, temporal aspect, iterativeness, and directionality of motion. Additionally, all these verbs are inflected heavily. All this is to say that this pattern would be nearly impossible for a statistical word aligner to learn given that it relies on surface form text. We could expect horribly low alignment scores for even very sizeable corpora that include Russian translations of the English word "go."

Russian word order is also much freer than English due to Russian's extensive inflectional morphology. It is common to choose particular word orders to shift the focus of the sentence (the new information is generally reported last). This could cause problems for a statistical word aligner, due to the fact that it is possible to have all the same words in many different orders, while the English translation would remain nearly constant.

### Potential issues in dealing with an English-Mandarin parallel corpus

Mandarin uses a script in which the overwhelming majority of characters (and therefore the overwhelming majority of words, which very roughly correspond to one or two characters each as far as I'm aware) are exceedingly rare. This means that co-occurrence data may be extremely unreliable and inaccurate, even for a very large corpus. Additionally, many words and phrases in Mandarin make use of existing characters in new ways such as for loan words, making tokens extremely polysemous. Lots of other words are somewhat idiomatic compositions, and so it is hard to predict how the symbols will be distributed. For instance, the word for "computer" in Mandarin is the word for "electric" followed by the word for "brain," but both of those individual words are highly polysemous on their own to begin with. It could be mistranslated by an unintelligent system as something like "lightning essence."

Additionally, Mandarin is written without spaces, and thus an intelligent tokenizer must be used before a statistical word aligner can even be attempted. If the tokenization is not extremely good, the statistical word aligner will be doomed to fail from the start, since the "words" it is trying to align will not even be the intended words.

## References

1. Stenström, E. (2023). conllu (4.5.3) [Software]. Available at: [https://pypi.org/project/conllu/](https://pypi.org/project/conllu/).
2. Tiedemann, J. and Thottingal, S. (2020). OPUS-MT--Building open translation services for the World. In Proceedings of the 22nd Annual Conferenec of the European Association for Machine Translation (EAMT).
