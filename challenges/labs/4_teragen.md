#4_teragen.md

cd /disk1/opt/cloudera/parcels/CDH-5.12.1-1.cdh5.12.1.p0.3/lib/hadoop-mapreduce/

```
[saturn@yakko hadoop-mapreduce]$ sudo -u hdfs time hadoop jar hadoop-mapreduce-examples.jar \
> teragen \
> -Ddfs.blocksize=32M \
> 65536000 /user/saturn/tgen
```

-----

```
17/12/01 18:41:30 INFO client.RMProxy: Connecting to ResourceManager at skippy.southcentralus.cloudapp.azure.com/10.0.3.7:8032
17/12/01 18:41:31 INFO terasort.TeraGen: Generating 65536000 using 2
17/12/01 18:41:31 INFO mapreduce.JobSubmitter: number of splits:2
17/12/01 18:41:31 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1512149605261_0001
17/12/01 18:41:32 INFO impl.YarnClientImpl: Submitted application application_1512149605261_0001
17/12/01 18:41:32 INFO mapreduce.Job: The url to track the job: http://skippy.southcentralus.cloudapp.azure.com:8088/proxy/application_1512149605261_0001/
17/12/01 18:41:32 INFO mapreduce.Job: Running job: job_1512149605261_0001
17/12/01 18:41:38 INFO mapreduce.Job: Job job_1512149605261_0001 running in uber mode : false
17/12/01 18:41:38 INFO mapreduce.Job:  map 0% reduce 0%
17/12/01 18:41:54 INFO mapreduce.Job:  map 19% reduce 0%
17/12/01 18:42:00 INFO mapreduce.Job:  map 35% reduce 0%
17/12/01 18:42:06 INFO mapreduce.Job:  map 44% reduce 0%
17/12/01 18:42:12 INFO mapreduce.Job:  map 46% reduce 0%
17/12/01 18:42:24 INFO mapreduce.Job:  map 54% reduce 0%
17/12/01 18:42:30 INFO mapreduce.Job:  map 71% reduce 0%
17/12/01 18:42:36 INFO mapreduce.Job:  map 75% reduce 0%
17/12/01 18:42:42 INFO mapreduce.Job:  map 76% reduce 0%
17/12/01 18:42:48 INFO mapreduce.Job:  map 77% reduce 0%
17/12/01 18:42:54 INFO mapreduce.Job:  map 93% reduce 0%
17/12/01 18:42:58 INFO mapreduce.Job:  map 100% reduce 0%
17/12/01 18:43:11 INFO mapreduce.Job: Job job_1512149605261_0001 completed successfully
17/12/01 18:43:11 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=291196
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=170
		HDFS: Number of bytes written=6553600000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters 
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=155402
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=155402
		Total vcore-milliseconds taken by all map tasks=155402
		Total megabyte-milliseconds taken by all map tasks=159131648
	Map-Reduce Framework
		Map input records=65536000
		Map output records=65536000
		Input split bytes=170
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=307
		CPU time spent (ms)=88570
		Physical memory (bytes) snapshot=645480448
		Virtual memory (bytes) snapshot=5623373824
		Total committed heap usage (bytes)=635437056
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=140750829423462787
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=6553600000
6.64user 0.47system 1:43.26elapsed 6%CPU (0avgtext+0avgdata 273972maxresident)k
0inputs+1944outputs (0major+87953minor)pagefaults 0swaps
```