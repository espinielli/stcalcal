weekdays
nextWeekday: aWeekday
	"Answer the RataDie of the next weekday (i.e. tuesday, wednesday ...)
	For example
		RataDie now nextWeekday: Weekday monday"
	^ (self class rd: (self rd + 7)) onOrBeforeWeekday: aWeekday