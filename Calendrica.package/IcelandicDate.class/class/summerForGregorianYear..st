helpers
summerForGregorianYear: aYear
	"first Thursday on or after April, 19"
	^ (GregorianDate year: aYear month: 4 day: 19) onOrAfterWeekday: Weekday thursday   