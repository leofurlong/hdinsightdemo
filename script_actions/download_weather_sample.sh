##only run on the first headnode 
lhost=$(hostname)
if [[ $lhost != *"hn0"* ]]
then
	exit 1
fi
	
##setup directories
rm -rf ~/weather_temp

mkdir ~/weather_temp
cd ~/weather_temp

##download sample files from NOAA
ftp -inpv ftp.ncdc.noaa.gov << EOF

user anonymous jfennessy@blue-granite.com

cd /pub/data/ghcn/daily/by_year
mget 2015.csv.gz 2014.csv.gz 2016.csv.gz

close
bye
EOF

##unzip files
gunzip ~/weather_temp/*

##upload to HDFS
hadoop fs -rm -r /data/weather/daily
hadoop fs -mkdir -p /data/weather/daily
hadoop fs -put ~/weather_temp/* /data/weather/daily

##clean up file system
rm -rf ~/weather_temp

##add a section here to copy to ADL -- use a parameter to drive branch
##TODO