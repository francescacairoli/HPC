cd /home/fcairoli/HPC/ex5/stream

#single core: serial run

#for try in 1 2 3 4 5;do
#echo "trial number $try" >>omp_singlecore.txt
#echo " " >>omp_singlecore.txt
#echo " " >>omp_singlecore.txt
#./stream_omp.x >> omp_singlecore.txt
#done

#same/diff socket for memory and core
for try in 1;do
for i in 'seq 1 10'; do
echo "trial number $try" | tee omp_singlecore_samesocket.txt omp_singlecore_diffsocket.txt
echo "$i threads" | tee omp_singlecore_samesocket.txt omp_singlecore_diffsocket.txt
numactl --cpunodebind=0 --membind=0 ./stream_omp.x >> omp_singlecore_samesocket.txt
numactl --cpunodebind=0 --membind=1 ./stream_omp.x >> omp_single_diffsocket.txt
done
done

exit

