helpers
dayNumber
	"Answer the day number in the year."
	^ (self fullDaysBetween: self newYearDay) + 1