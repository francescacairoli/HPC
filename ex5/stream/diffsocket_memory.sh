cd /home/fcairoli/HPC/ex5/stream

rm diffsocket_res.txt

for i in `seq 1 10`; do
echo "$i threads" >> diffsocket_res.txt
 OMP_NUM_THREADS=$i numactl --cpunodebind 1 --membind 0 ./stream_omp.x | grep "Triad:" | awk '{print $2}' >> diffsocket_res.txt
done

