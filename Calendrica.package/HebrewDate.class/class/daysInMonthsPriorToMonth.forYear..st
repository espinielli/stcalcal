helpers
daysInMonthsPriorToMonth: aMonth forYear: aYear
	"answer the number of days in months prior to month, aMonth, for year, aYear."
	^ aMonth < HebrewMonth tishri rd
		ifTrue:[ | beforeTishri afterTishri |
			afterTishri := ((HebrewMonth tishri rd to: (self lastMonthOfYear: aYear) rd))
					inject: 0 into: [:sum :next | sum + (self lastDayOfMonth: (HebrewMonth month: next) forYear: aYear)].
			beforeTishri := (HebrewMonth nisan rd to: aMonth - 1)
					inject: 0 into: [:sum :next | sum + (self lastDayOfMonth: (HebrewMonth month: next) forYear: aYear)].
			afterTishri + beforeTishri]
		ifFalse:[(HebrewMonth tishri rd to: aMonth - 1)
					inject: 0 into: [:sum :next | sum + (self lastDayOfMonth: (HebrewMonth month: next) forYear: aYear)]].