private
rataDieFromYear: aYear month: aMonth day: aDay
	"equivalent to fixed-from-julian in Calendrical Calculations"
	| y leapYearCorrection |
	y := (aYear < 0)
			ifTrue: [aYear + 1]	"No year zero"
			ifFalse: [aYear].
	leapYearCorrection := 	(aMonth <= 2)
			ifTrue: [0]
			ifFalse: [(self class isLeapYear: aYear)
						ifTrue: [-1]
						ifFalse: [-2]].
	self rataDiePart: ((JulianDate epoch rd - 1) +	"Ordinary days since epoch."
			(365 * (y - 1)) +		"Ordinary days since epoch."
			((y - 1) // 4) +		"Leap days since epoch..."
			(((367 * aMonth) - 362) // 12) +	"Days in prior months this year assuming 30-day Feb"
			leapYearCorrection +	"Correct for 28- or 29-day Feb"
			aDay).