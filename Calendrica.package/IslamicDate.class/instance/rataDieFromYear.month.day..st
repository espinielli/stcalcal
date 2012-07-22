private
rataDieFromYear: aYear month: aMonth day: aDay
	"equivalent to fixed-from-islamic in Calendrical Calculations"
	| daysPreviousYears |
	"number of days before previous year"
	daysPreviousYears := self class numberOfDaysInPreviousYearsForYear: aYear.
	self rataDiePart:
		self epoch rd - 1 +		"R.D. of last day before Islamic epoch, call it DD"
		daysPreviousYears +	"number of days between DD and the last day of the year before aYear"
		(29 * (aMonth - 1)) +	"number of days in prior months in aYear"
		(aMonth // 2) + aDay 	"number of days in aMonth up to and including aDay"