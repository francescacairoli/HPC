cd /home/fcairoli/HPC/ex5/stream

## single core: serial run

#for trial in 1 2 3 4 5;do
#echo "trial number $trial " >>singlecore.txt
#echo " " >>singlecore.txt
#echo " " >>singlecore.txt
#./stream.x >> singlecore.txt
#done

rm singlecore_samesocket.txt
rm singlecore_differentsocket.txt

#memory and core in same/different socket 
for trial in 1;do
for i in 'seq 1 10'; do 

echo "trial number $trial" >> singlecore_samesocket.txt 
echo "trial number $trial" >> singlecore_differentsocket.txt
echo "$i threads" >> singlecore_samesocket.txt 
echo "$i threads" >> singlecore_differentsocket.txt
OMP_NUM_THREADS=$i numactl --cpunodebind=0 --membind=0 ./stream.x >> singlecore_samesocket.txt
OMP_NUM_THREADS=$i numactl --cpunodebind=0 --membind=1 ./stream.x >> singlecore_differentsocket.txt

done
done


exit

