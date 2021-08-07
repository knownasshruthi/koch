cd '/d/koch hackbio'
cat global_csv.sh
#!/usr/bin/env bash
git clone https://github.com/knownasshruthi/koch.git
cd global_csv.sh
chmod +x koch*
for i in $(ls koch*)
do
./$i | awk -F '.' '{print $1,$2,$3,$4,$5}' >> Team_koch.csv
done
