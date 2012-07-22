accessing
month

	| priorDaysInYear |
	priorDaysInYear := self fullDaysBetween: self newYearDay.
	^ ((11 * priorDaysInYear) + 330) // 325  