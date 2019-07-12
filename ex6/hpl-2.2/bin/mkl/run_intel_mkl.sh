## Executing my HPL benchmark                  

# Print execution node name
/bin/hostname


# Load the modules needed for the execution
module load mkl
module load openmpi/1.8.3/intel/14.0

# Run the Intel benchmark
./xlinpack_xeon64 lininput_xeon64

exit


