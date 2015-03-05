# WordCount

This is a simple Pig script to count the frequency of words in a file.

## Running 

The `wordcount.pig` script takes two arguments: _input_ and _output_. _input_ should be set to the file to be processes, and _output_ should be set to a directory to output results.

To run in local mode:

    $ pig -x local -f wordCount.pig -p input=<input_file> -p output=<output_file>

To run on a Hadoop cluster:

    $ pig -x mapreduce -f wordCount.pig -p input=<input_file> -p output=<output_file>
