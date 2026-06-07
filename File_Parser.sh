#! /usr/bin/bash
# First we need to read all files in the directory and read Project names if possible
cd ~/repos/PROJECT-1
for filename in *
do
IFS="_.-/" read -ra name <<< $filename
if [[ -d $filename ]]
then
continue
fi
if [[ ${filename} == *.sh ]] 
then
continue
fi
if [[ ${#name[@]} -le 2 ]] 
then
continue 
fi
project=${name[1]}
echo $project
done
# Now we create direcories for every Project and move files to their parent folder, if the files are not properly named they go to Unknown folder.
for filename in *
do
IFS="_.-/" read -ra name <<< $filename
if [[ -d $filename ]]
then
continue
fi
if [[ ${filename} == *.sh ]]
then
continue
fi
if [[ ${#name[@]} -le 2 ]] 
then
mkdir -p UNKNOWN
mv $filename UNKNOWN
else
project=${name[1]}
mkdir -p $project
mv $filename $project
fi
done