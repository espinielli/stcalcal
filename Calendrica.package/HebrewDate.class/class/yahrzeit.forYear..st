personal days
yahrzeit: anHebrewDate forYear: anHebrewYear
	"answer the hebrew date for death anniversary, anHebrewDate, for Year, anHebrewYear."
	[anHebrewDate month = HebrewMonth marheshvan],
	[anHebrewDate day = 30],
	[(self isLongMarheshvan: anHebrewDate year + 1) not]
		ifAllTrue: [^ (self year: anHebrewYear month: HebrewMonth kislev day: 1) previousDay].
		
	[anHebrewDate month = HebrewMonth kislev],
	[anHebrewDate day = 30],
	[self isShortKislev: anHebrewDate year + 1]
		ifAllTrue: [^ (self year: anHebrewYear month: HebrewMonth tevet day: 1) previousDay].
		
	anHebrewDate month = HebrewMonth adarII
		ifTrue: [^ self year: anHebrewYear month: (self lastMonthOfYear: anHebrewYear) day: anHebrewDate day].

	[anHebrewDate month = HebrewMonth adar],
	[anHebrewDate day = 30],
	[(self isLeapYear: anHebrewDate year) not]
		ifAllTrue: [^ self year: anHebrewYear month: HebrewMonth shevat day: 30].
	
	^ (self year: anHebrewYear month: anHebrewDate month day: 1) nextNthDay: (anHebrewDate day - 1)