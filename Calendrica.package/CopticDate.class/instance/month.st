accessing
month

	| rdSinceNewYear |
	rdSinceNewYear := self fullDaysBetween: self newYearDay.
	^ 1 + (rdSinceNewYear // 30)