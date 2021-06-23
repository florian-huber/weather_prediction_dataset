#!/bin/bash
#generates a CSV file with station locations and names from the raw ECAD data

echo "ID,Name,country,lat,lon,height" > all_stations.csv

for i in `ls */stations.txt` ; do
    #look for lines starting with zero or more spaces, followed by a number and a comma
    #because we have multiple stations in some cities just take the first line
    #some cities also have multiple entries (e.g. STOCKHOLM_A), remove all the names with a lone A or _ in them
    grep "^[ ]*[0-9]\+," $i | head -1 | grep -v " A" | grep -v "_" >> all_stations.csv
done
