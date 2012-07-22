weekdays
onOrBeforeWeekday: aWeekday
	"Answer the RataDie of the nearest to self prior weekday (i.e. monday, tuesday ...).
	For example
		RataDie now onOrBeforeWeekday: Weekday monday."
	^ self - (self - aWeekday) dayOfWeek