private
rataDieFromYear: aYear month: aMonth day: aDay
	"equivalent to fixed-from-egyptian in Calendrical Calculations"
	self rataDiePart: 
		self epoch rd -	1 +		"the R.D. number of the last day before (coptic) epoch, DD"
		(365 * (aYear - 1)) +	"number of nonleap days between DD and last day of previous year, i.e. (aYear-1)"
		(aYear // 4) +			"the number of leap days"
		(30 * (aMonth - 1)) +	"number of days in prior months in year, aYear"
		aDay.					"number of days (up to including day, aDay) in month, aMonth"