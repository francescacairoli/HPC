module load mkl/11.1
module load intel/14.0
module load openmpi/1.8.3/intel/14.0
module load impi-trial/5.0.1.035

cd /home/fcairoli/HPC/ex5/nodeperf
export OMP_NUM_THREADS=20 
export OMP_PLACES=cores

rm nodeperf_execution.txt
rm nodeperf_execution_gnu.txt

cd /home/fcairoli/HPC/ex5/nodeperf
echo "nodeperf with Intel and MKL" >> nodeperf_execution.txt

./nodeperf_intel.x >> nodeperf_execution.txt


echo "nodeperf on GNU" >> nodeperf_execution_gnu.txt

./nodeperf_gnu.x >> nodeperf_execution_gnu.txt

