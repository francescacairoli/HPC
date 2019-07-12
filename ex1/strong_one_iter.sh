module load openmpi

echo "Strong Scalability: base size is $1"

#for procs in 1 2 4 8 16 20; do
for ((procs=1;procs<=20;procs++)); do
   echo "Niter_per_CPU =$(($1/${procs})), np=${procs}"
   time mpirun -np ${procs} ./parallel_pi $(($1/${procs}))
   echo "------------------------------------------------"
 done
