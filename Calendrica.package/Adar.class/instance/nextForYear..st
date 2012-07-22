accessing
nextForYear: aYear

	^ (HebrewDate isLeapYear: aYear)
		ifTrue:[HebrewMonth adarII]
		ifFalse:[HebrewMonth nisan]