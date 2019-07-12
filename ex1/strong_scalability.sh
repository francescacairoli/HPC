module load openmpi

#rm StrongScalabilityData.txt

echo "Let's test strong scalability:"

#for n in 10000000 100000000 1000000000; do
for n in 100000000; do
	echo "number of iterations = $n" >> StrongScalabilityData_100mill.txt
	bash ./strong_one_iter.sh ${n} >> StrongScalabilityData_100mill.txt
done
echo "Test finished"
