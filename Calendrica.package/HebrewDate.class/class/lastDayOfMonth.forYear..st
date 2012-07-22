helpers
lastDayOfMonth: anHebrewMonth forYear: aYearNumber

	^ [{HebrewMonth iyyar.
		HebrewMonth tammuz. 
		HebrewMonth elul. 
		HebrewMonth tevet. 
		HebrewMonth adarII} includes: anHebrewMonth] ,
	[anHebrewMonth = HebrewMonth adar and: [(self isLeapYear: aYearNumber) not]] ,
	[anHebrewMonth = HebrewMonth marheshvan and: [(self isLongMarheshvan: aYearNumber) not]] ,
	[anHebrewMonth = HebrewMonth kislev and: [self isShortKislev: aYearNumber]]
		ifAnyTrue: [29]
		otherwise: [30]