*! version 1.0 sergio.correia@gmail.com 18nov2014

cap pr drop _gfastmax
program define _gfastmax
version 10
syntax [if] [in], type(string) name(string) args(string) [by(varlist)]
	tempvar touse
	qui {
		gen byte `touse' = 1 `if' `in'
		gen `type' `name' = -(`args') if `touse'==1
		bys `by' `touse' (`name'): replace `name' = `name'[1]
		replace `name' = -`name'
		* Using negative signs saves having to deal with missing values
	}
end
