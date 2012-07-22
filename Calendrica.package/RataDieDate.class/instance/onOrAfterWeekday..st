weekdays
onOrAfterWeekday: aWeekday
	"Answer the RataDie of the nearest to self following weekday (i.e. monday, tuesday ...).
	For example
		RataDie now onOrAfterWeekday: Weekday monday."
	^ (self class rd: (self rd + 6)) onOrBeforeWeekday: aWeekday