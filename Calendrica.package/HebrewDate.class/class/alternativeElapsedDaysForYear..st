helpers
alternativeElapsedDaysForYear: anHebrewYearNumber

	| elapsedMonths elapsedParts days |
	elapsedMonths := ((235 * anHebrewYearNumber) - 234)  // 19.
	elapsedParts := 12084 + (13753 * elapsedMonths).
	days := (29 * elapsedMonths) + (elapsedParts // 25920).

	^ ((3 * (days + 1)) \\ 7) < 3
		ifTrue: [days + 1]
		ifFalse: [days]