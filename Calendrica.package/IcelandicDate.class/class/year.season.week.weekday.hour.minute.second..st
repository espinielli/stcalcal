instance creation
year: aYear season: summerOrWinter week: aWeekNumber weekday: aWeekday hour: anHourNumber minute: aMinuteNumber second: aSecondNumber
	"Answer an instance of an Icelandic date"
	^ (self basicNew)
		year: aYear
		season: summerOrWinter
		week: aWeekNumber
		weekday: aWeekday
		hour: anHourNumber
		minute: aMinuteNumber
		second: aSecondNumber;
		yourself
