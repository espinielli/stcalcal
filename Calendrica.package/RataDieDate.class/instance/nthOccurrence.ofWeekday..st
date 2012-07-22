weekdays
nthOccurrence: numberOfOccurrence ofWeekday: aWeekdayNameOrSymbol

	self assert: numberOfOccurrence ~= 0 description: 'nthOccurrence cannot be zero'.
	^self class rd: (numberOfOccurrence strictlyPositive 
						ifTrue:[7 * numberOfOccurrence + (self previousWeekday: aWeekdayNameOrSymbol) rd ]
						ifFalse:[7 * numberOfOccurrence + (self nextWeekday: aWeekdayNameOrSymbol) rd])