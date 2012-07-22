private
year: aYear season: summerOrWinter week: aWeekNumber weekday: aWeekday hour: anHourNumber minute: aMinuteNumber second: aSecondNumber
	"Answer an instance of an Icelandic date"
	self
		rataDieFromYear: aYear
		season: summerOrWinter
		week: aWeekNumber 
		weekday: aWeekday.
	self
		timePart: (ClockTime 
					hours: anHourNumber
					minutes: aMinuteNumber
					seconds: aSecondNumber) time / 24.
	^ self