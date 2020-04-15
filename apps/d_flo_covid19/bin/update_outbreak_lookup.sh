#!/bin/bash
#file=`date --date='yesterday' +"%m-%d-%Y"`
#file=`date -j -v -1d +%m-%d-%Y`
file=`date +%m-%d-%Y`

wget -O /Applications/Splunk/etc/apps/d_flo_covid19/lookups/outbreak.csv --no-check-certificate https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv

wget -O /Applications/Splunk/etc/apps/d_flo_covid19/lookups/outbreak_deaths.csv --no-check-certificate https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv

wget -O /Applications/Splunk/etc/apps/d_flo_covid19/lookups/outbreak_recovered.csv --no-check-certificate https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv

wget -O /Applications/Splunk/etc/apps/d_flo_covid19/lookups/jhsu/"$file".csv --no-check-certificate https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/"$file".csv

wget -O /Applications/Splunk/etc/apps/d_flo_covid19/lookups/outbreak_report.csv --no-check-certificate https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/"$file".csv
