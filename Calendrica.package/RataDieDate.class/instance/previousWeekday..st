weekdays
previousWeekday: aWeekday
	"Answer the RataDie of the k-day aWeekDayIndex previous to self (k=1 means Sunday, and so on)."
	^ (self class rd: (self rd - 1)) onOrBeforeWeekday: aWeekday