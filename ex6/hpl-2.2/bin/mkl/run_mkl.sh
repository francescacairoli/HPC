## Executing my HPL benchmark 

# Print execution node name
/bin/hostname

cd /home/fcairoli/HPC/ex6/hpl-2.2/bin/mkl


# Load the modules needed for the execution
#module load openmpi
module load openmpi/1.8.3/intel/14.0
module load mkl
module load intel/14.0


# Run the HPL benchmark
#export OMP_NUM_THREADS=20
#export OMP_DYNAMIC=false
#export MKL_NUM_THREADS=2

mpirun -np 10 ./xhpl

exit
