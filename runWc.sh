#!/bin/sh

 spark-submit --master local --class thoughtworks.wordcount.WordCount \
    target/scala-2.12/tw-pipeline_2.12-0.1.0-SNAPSHOT.jar \
    "./src/main/resources/data/words.txt" \
    ./output 2 >&1 | tee wc.log