#!/usr/bin/awk -f 
BEGIN {OFS = "\n"} {header = $0 ; getline seq ; getline qheader ; getline qseq ; if (length(seq) > 9999) {print header, seq, qheader, qseq}}


### To pull out only .fastq reads that are equal to or longer than 10 kilobases.
### Before running: specify path to intepreter following the shebang (#!), save file in working directory and make sure it's excutable (chmod+x)
### Example: ./10kb_read_filter.awk <path/to/fastq/files/*.fastq> > <output_name.fastq> 
