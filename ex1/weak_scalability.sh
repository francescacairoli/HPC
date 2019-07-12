module load openmpi

#rm WeakScalabilityData.txt

echo "Let's test weak scalability:"

for n in 10000000; do
        echo "number of iterations = $n" >> WeakScalabilityData_10mill.txt
        bash ./weak_one_iter.sh ${n} >> WeakScalabilityData_10mill.txt
done
echo "Test finished"
                
