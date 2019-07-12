module load mkl
module load openmpi/1.8.3/intel/14.0
module load impi-trial/5.0.1.035
module load intel/14.0 

#mpicc -fopenmp -o3 nodeperf.c  -m64 -I${MKLROOT}/include -o nodeperf.x2 -L${MKLROOT}/lib/intel64 -Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl

mpicc -fopenmp -o3 nodeperf.c -m64 -I${MKLROOT}/include -o nodeperf_gnu.x -L${MKLROOT}/lib/intel64 -Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl
