module load openmpi

echo "Let's analyse scalability" 
for n in 10000000 100000000 1000000000; do

	for i in {1..10}; do
	 	./serial_pi ${n} >> SerialData.txt
		bash ./strong_one_iter.sh ${n} >> StrongScalabilityData.txt
         	bash ./weak_one_iter.sh ${n} >> WeakScalabilityData.txt
	done
done
echo "Test finished"
exit
