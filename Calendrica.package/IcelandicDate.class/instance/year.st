accessing
year

	| gYear |
	gYear := self asGregorianDate year.
	^ self >= (self class summerForGregorianYear: gYear)
		ifTrue: [gYear]
		ifFalse:[gYear - 1]