private
year: aYear month: aMonth leap: aBoolean day: aDayNumber hour: anHourNumber minute: aMinuteNumber second: aSecondNumber

	self
		rataDieFromYear: aYear
		month: aMonth
		leap: aBoolean
		day: aDayNumber.
	self timePart: (ClockTime 
					hours: anHourNumber
					minutes: aMinuteNumber
					seconds: aSecondNumber) time / 24.
	^ self