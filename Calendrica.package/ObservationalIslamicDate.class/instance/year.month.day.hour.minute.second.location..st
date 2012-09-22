private
year: aYearNumber month: aMonthNumber day: aDayNumber hour: anHourNumber minute: aMinuteNumber second: aSecondNumber location: aLocation

	location := aLocation.
	self
		rataDieFromYear: aYearNumber
		month: aMonthNumber
		day: aDayNumber.
	self
		timePart: (ClockTime 
					hours: anHourNumber
					minutes: aMinuteNumber
					seconds: aSecondNumber) time / 24.
	^ self