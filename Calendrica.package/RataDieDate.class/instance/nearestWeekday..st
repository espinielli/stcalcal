weekdays
nearestWeekday: aWeekday
	"Answer the RataDie of the nearest weekday (i.e. monday, tuesday ...) to self.
	For example
		RataDie now nearestWeekday: Weekday monday."
	^ (self class rd: (self rd + 3)) onOrBeforeWeekday: aWeekday