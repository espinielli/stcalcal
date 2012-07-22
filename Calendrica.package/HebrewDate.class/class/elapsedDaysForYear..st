helpers
elapsedDaysForYear: anHebrewYearNumber

	|   molad days |
	molad := self
				moladForMonth: HebrewMonth tishri
				year: anHebrewYearNumber.
	days := (molad - self epoch rd + (12/24)) floor.

	^ ((3 * (days + 1)) \\ 7) < 3
		ifTrue: [days + 1]
		ifFalse: [days]