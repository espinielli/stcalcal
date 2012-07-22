private
rataDieFromYear: aYear month: aMonth day: aDay
	"equivalent to fixed-from-gregorian in Calendrical Calculations"
	self rataDiePart:
		((GregorianDate epoch rd - 1) "last day before the Gregorian epoch"
				 + (365 * (aYear - 1)) "non-leap days till previous year"
				 + ((aYear -1) / 4) floor - ((aYear - 1) / 100) floor + ((aYear - 1) / 400) floor "leap days till previous year"
			 	+ (((367 * aMonth) - 362) / 12) floor "number of days in prior months of current year (assuming February had 30 days)"
			 	+ ((aMonth <= 2) "correction for previous assumption"
						ifTrue:  [0]
						ifFalse: [ (self class isLeapYear: aYear)
									ifTrue:  [-1]
									ifFalse: [-2]])
				 + aDay).