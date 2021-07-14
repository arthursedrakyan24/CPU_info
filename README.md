# CPU_Info
The program outputs in your terminal the information about your CPU and etc.
You can run the program by two way.
1. ./all.sh
2. Owing to makefile. It means with the command "make".
The adventage in this way is the chance to run the program part by part. 
It means: 
1.if you want to know information only about the RAM and CPU without details you can write only the command "make cores", 
2.if you want to know information about your computer with the details you can write in your terminal the command "make ramcpu", 
3.if you want to check your connection time by time and compare their you can use the command "make ping", 
this command creates the file with the name "pingoutput" and saves the current date (with the time), current nameserver and ping in that file.
