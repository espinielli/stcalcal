private
rataDieFromYear: aYear season: summerOrWinter	week: aWeekNumber weekday: aWeekday
	"Answer an instance of an Icelandic date"
	| start shift |
	start := summerOrWinter = Season summer
		ifTrue: [self class summerForGregorianYear: aYear]
		ifFalse:[self class winterForGregorianYear: aYear].
	shift := summerOrWinter = Season summer
		ifTrue: [Weekday thursday]
		ifFalse:[Weekday saturday].

	self rataDiePart: (start rd + (7 * (aWeekNumber - 1)) + ((aWeekday rd - shift rd) \\ 7))