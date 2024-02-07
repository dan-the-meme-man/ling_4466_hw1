import os

in_files = [f for f in os.listdir('.') if f.startswith('giza_out')]
out_files = ['first_10_' + f for f in in_files]

for in_f, out_f in zip(in_files, out_files):
    with open(in_f, 'r') as in_file:
        with open(out_f, 'w+') as out_file:
            for i in range(30):
                out_file.write(in_file.readline())