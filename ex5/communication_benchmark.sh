module load impi-trial/5.0.1.035

#rm PingPongBenchmark_1000.txt
#rm PingPongBenchmark_10000.txt
#rm LatencySameSocket.txt
#rm LatencyDifferentSockets.txt
#rm FinalTask.txt

#echo " mpirun -np 2 PingPong" >> PingPongBenchmark_1000.txt
#mpirun -np 2 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> PingPongBenchmark_1000.txt
#mpirun -np 2 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> PingPongBenchmark_1000.txt
#mpirun -np 2 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> PingPongBenchmark_1000.txt

#echo "mpirun -np 2 -iter 10000 PingPong" >> PingPongBenchmark_10000.txt
#mpirun -np 2 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 -iter 10000 PingPong >> PingPongBenchmark_10000.txt
#mpirun -np 2 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 -iter 10000 PingPong >> PingPongBenchmark_10000.txt
#mpirun -np 2 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 -iter 10000 PingPong >> PingPongBenchmark_10000.txt

echo "mpirun -np 2 hwloc-bind core:0 core:7 PingPong" >> LatencySameSocket_recompiled.txt
mpirun -np 2 hwloc-bind core:0 core:7 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> LatencySameSocket_recompiled.txt
mpirun -np 2 hwloc-bind core:0 core:7 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> LatencySameSocket_recompiled.txt 
mpirun -np 2 hwloc-bind core:0 core:7 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> LatencySameSocket_recompiled.txt 

echo "mpirun -np 2 core:0 core:13 PingPong" >> LatencyDifferentSockets_recompiled.txt
mpirun -np 2 hwloc-bind core:0 core:13 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> LatencyDifferentSockets_recompiled.txt
mpirun -np 2 hwloc-bind core:0 core:13 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> LatencyDifferentSockets_recompiled.txt
mpirun -np 2 hwloc-bind core:0 core:13 /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> LatencyDifferentSockets_recompiled.txt

#echo "mpirun -np 2 --map-by ppr:1:node">> FinalTask_recompiled.txt
#mpirun -np 2 --map-by ppr:1:node /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> FinalTask_recompiled.txt
#mpirun -np 2 --map-by ppr:1:node /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> FinalTask_recompiled.txt
#mpirun -np 2 --map-by ppr:1:node /u/shared/programs/x86_64/intel/impi_5.0.1/bin64/IMB-MPI1 PingPong >> FinalTask_recompiled.txt


