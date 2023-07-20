version=$(magma -b printVersion:=true magma/runcomputation.m | tail -n 1)
directory="speed/speed_$version"
let nthreads=$1
let total_memory=2*$nthreads
echo $directory
hliðskjálf --script=magma/runcomputation.m --schema schema.info --computations=speed/testvelocita.comp --workoutput=$directory --nthreads=$1 --total-memory $total_memory --memory 2048 --stdio
cat $directory/* | bin/cleanup > $directory.unordered
bin/sort --order speed/speed_reference.csv --input $directory.unordered --output $directory.csv
rm $directory.unordered
rm $directory -r
