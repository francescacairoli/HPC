echo "Weak scalability_test, base size is $1"
for ((procs=1;procs<=20;procs++)); do
   echo "Niter_for_CPU=$1, np=${procs}"
   /usr/bin/time -p mpirun -np ${procs} ./parallel_pi $1
   echo "------------------------------------------------"
done
          
