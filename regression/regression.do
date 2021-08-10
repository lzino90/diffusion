import excel "FullData_extraanalysis.xlsx", sheet("Sheet1") firstrow clear
reshape long R I, i(id) j(round)
gen dif = R-I
sort Sessioncode round
by Sessioncode round: egen sum=total(dif)
gen num = sum-dif

bysort Sessioncode round: egen counter1=count(num)
gen counter2 = counter1 - 1
replace counter2 = 0 if counter2 < 0
gen TS = num/counter2

sort Sessioncode round
by Sessioncode round: egen counter3=total(I)
gen maj = (counter3-I)/counter2


xtset id round
sort id round
gen TSlag = TS[_n-1] if round != 1

xtreg R I TSlag maj, fe
