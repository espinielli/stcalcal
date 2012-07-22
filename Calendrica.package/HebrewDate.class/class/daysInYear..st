helpers
daysInYear: aYearNumber

	^ (self newYearDayForYear: aYearNumber + 1) rd - (self newYearDayForYear: aYearNumber) rd