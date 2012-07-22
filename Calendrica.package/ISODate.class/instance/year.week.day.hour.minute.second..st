private
year: aYearNumber week: aWeekNumber day: aDayOfWeekNumber hour: anHourNumber minute: aMinuteNumber second: aSecondNumber
	self
		rataDieFromYear: aYearNumber
		week: aWeekNumber
		day: aDayOfWeekNumber.
	self
		timePart: (ClockTime 
					hours: anHourNumber
					minutes: aMinuteNumber
					seconds: aSecondNumber) time / 24.
	^ self