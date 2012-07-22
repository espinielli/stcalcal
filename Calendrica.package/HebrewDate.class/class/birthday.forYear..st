personal days
birthday: anHebrewDate forYear: anHebrewYear
	"answer the hebrew date for birthday, anHebrewDate, for Year, anHebrewYear."
	^ (anHebrewDate month = self lastMonthOfYear: anHebrewDate year)
		ifTrue: [self year: anHebrewYear month: (self lastMonthOfYear: anHebrewYear) day: anHebrewDate day]
		ifFalse:[(self year: anHebrewYear month: anHebrewDate month day: 1) nextNthDay: (anHebrewDate day - 1)]