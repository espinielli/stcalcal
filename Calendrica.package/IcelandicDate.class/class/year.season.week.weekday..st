instance creation
year: aYear season: summerOrWinter week: aWeekNumber weekday: aWeekday
	"Answer an instance of an Icelandic date"
	^ self
		year: aYear
		season: summerOrWinter 
		week: aWeekNumber 
		weekday: aWeekday 
		hour: 0
		minute: 0
		second: 0