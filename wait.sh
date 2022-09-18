echo "Starting conversion!"
echo $(ffmpeg -version)

files=$(ls)
mkv=".mkv"
while true
do
	sleep 60
done 
for i in $files
do
	echo $i
	if [[ "$i" == *".mkv"* ]]
	then
		echo "Found a movie to convert!"
		if [ ! -f ${i}_folder ]
		then
			mkdir "${i}_folder"
		fi
	fi
done
