cd /home/fcairoli/HPC/ex5/stream

rm samesocket_res.txt

for i in `seq 1 10`; do
echo "$i threads" >> samesocket_res.txt
 OMP_NUM_THREADS=$i numactl --cpunodebind 1 --membind 1 ./stream_omp.x | grep "Triad:" | awk '{print $2}' >> samesocket_res.txt
 done 
