version=$(magma -b printVersion:=true magma/runcomputation.m | tail -n 1)
directory="speed/speed_$version"
echo $directory
let nthreads=$1
let total_memory=2*$nthreads
hliðskjálf --script=magma/runcomputation.m --schema schema.info --computations=speed/abelian.comp --workoutput=$directory --nthreads=$1 --total-memory $total_memory --memory 2048 --stdio
cat $directory/* | bin/cleanup > $directory.unordered
bin/sort --order speed/abelian_reference.csv --input $directory.unordered --output $directory_abelian.csv
rm $directory.unordered
rm $directory -r
