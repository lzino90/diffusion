import excel "\\Cl3-usr15\usr15\P283635\My Documents\PhD\1 - Main Research\Submissions\2020 - 09 - Nature Communication\ExtraAnalyses\FullData_extraanalysis.xlsx", sheet("Sheet1") firstrow clear
reshape long R I, i(id) j(round)
gen dif = R-I
sort Sessioncode round
by Sessioncode round: egen sum=total(dif)
gen num = sum-dif

bysort Sessioncode round: egen counter1=count(num)
gen counter2 = counter1 - 1
replace counter2 = 0 if counter2 < 0
gen TS = num/counter2

xtset id round
sort id round
gen TSlag = TS[_n-1] if round != 1

xtreg R I TSlag, fe
