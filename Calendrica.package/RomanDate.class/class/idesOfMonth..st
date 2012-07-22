accessing
idesOfMonth: aMonthNumber

	^ ({3. 5. 7. 10} includes: aMonthNumber)
		ifTrue: [15]
		ifFalse:[13]