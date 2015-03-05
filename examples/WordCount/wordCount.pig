raw = LOAD '$input';
single_word = FOREACH raw GENERATE FLATTEN(TOKENIZE($0)) as word;
word_groups = GROUP single_word by word;
word_counts = FOREACH word_groups GENERATE group, COUNT(single_word);
STORE word_counts INTO '$output';