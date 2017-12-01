running PI

```
time hadoop jar hadoop-mapreduce-examples.jar pi 10 100
```

PI OUTPUT

```
File System Counters
FILE: Number of bytes read=96
FILE: Number of bytes written=1354745
FILE: Number of read operations=0
FILE: Number of large read operations=0
FILE: Number of write operations=0
HDFS: Number of bytes read=2770
HDFS: Number of bytes written=215
HDFS: Number of read operations=43
HDFS: Number of large read operations=0
HDFS: Number of write operations=3
Job Counters
Launched map tasks=10
Launched reduce tasks=1
Data-local map tasks=9
Rack-local map tasks=1
Total time spent by all maps in occupied slots (ms)=47014
Total time spent by all reduces in occupied slots (ms)=3892
Total time spent by all map tasks (ms)=47014
Total time spent by all reduce tasks (ms)=3892
Total vcore-seconds taken by all map tasks=47014
Total vcore-seconds taken by all reduce tasks=3892
Total megabyte-seconds taken by all map tasks=48142336
Total megabyte-seconds taken by all reduce tasks=3985408
Map-Reduce Framework
Map input records=10
Map output records=20
Map output bytes=180
Map output materialized bytes=340
Input split bytes=1590
Combine input records=0
Combine output records=0
Reduce input groups=2
Reduce shuffle bytes=340
Reduce input records=20
Reduce output records=0
Spilled Records=40
Shuffled Maps =10
Failed Shuffles=0
Merged Map outputs=10
GC time elapsed (ms)=916
CPU time spent (ms)=7740
Physical memory (bytes) snapshot=4709163008
Virtual memory (bytes) snapshot=30660919296
Total committed heap usage (bytes)=4616880128
Shuffle Errors
BAD_ID=0
CONNECTION=0
IO_ERROR=0
WRONG_LENGTH=0
WRONG_MAP=0
WRONG_REDUCE=0
File Input Format Counters
Bytes Read=1180
File Output Format Counters
Bytes Written=97
Job Finished in 26.67 seconds
Estimated value of Pi is 3.14800000000000000000

real    0m29.564s
user    0m8.464s
sys     0m0.388s



```
