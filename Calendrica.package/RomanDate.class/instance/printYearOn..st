printing
printYearOn: aStream

	| y |
	y := self event ~= RomanMonthEvent kalends
			ifTrue: [self year]
			ifFalse:[self month = 12
						ifTrue: [self year + 1]
						ifFalse:[self year]].
	aStream nextPutAll: y printStringRoman