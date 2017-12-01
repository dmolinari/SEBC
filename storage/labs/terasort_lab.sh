#!/bin/env sh

sudo time  -u hdfs  hadoop jar hadoop-mapreduce-examples.jar \
terasort \
-Ddfs.blocksize=32M \
-Dio.file.buffer.size=131072 \
-Dmapreduce.map.java.opts=-Xmx1536m \
-Dmapreduce.map.memory.mb=2048 \
-Dmapreduce.map.output.compress=true \
-Dmapreduce.map.output.compress.codec=org.apache.hadoop.io.compress.Lz4Codec \
-Dmapreduce.reduce.java.opts=-Xmx1536m \
-Dmapreduce.reduce.memory.mb=2048 \
-Dmapreduce.task.io.sort.factor=100 \
-Dmapreduce.task.io.sort.mb=768 \
-Dyarn.app.mapreduce.am.resource.mb=1024 \
-Dmapred.reduce.tasks=100 \
-Dmapreduce.terasort.output.replication=1 \
replica/terainput \
replica/teraoutput

