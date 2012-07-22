private
rataDieFromYear: aYear month: aMonth day: aDay
	"equivalent to fixed-from-hebrew in Calendrical Calculations"
	| daysInPreviousMonthsOfYear |
	daysInPreviousMonthsOfYear := self class daysInMonthsPriorToMonth: aMonth forYear: aYear.
	self rataDiePart: (self class newYearDayForYear: aYear) rd - 1 + "days since R.D. epoch for start of this year"
		daysInPreviousMonthsOfYear + "number of days for previous months of current year"
		aDay. "number of days in current month"