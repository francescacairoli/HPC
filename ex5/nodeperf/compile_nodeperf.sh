module load mkl/11.1
module load intel/14.0
module load openmpi/1.8.3/intel/14.0
module load impi-trial/5.0.1.035


mpiicc -O2 -xHost -fopenmp -mkl nodeperf.c -o nodeperf_intel.x

