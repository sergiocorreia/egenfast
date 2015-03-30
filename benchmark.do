clear all
cls
set obs 1000000
gen id = int(uniform()*10)
tab id
gen u = uniform()

gen v = uniform()

sort v
bys id: egen max1 = max(u)

sort v
bys id: egenfast max2 = max(u)

*corr max1 max2
* Results: egen=2.16s egenfast=1.1s
