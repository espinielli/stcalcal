helpers
yearLengthCorrectionForYear: aYearNumber

	| correction elapsedDaysCurrentYear elapsedDaysNextYear elapsedDaysPreviousYear |
	elapsedDaysPreviousYear := self elapsedDaysForYear: aYearNumber - 1.
	elapsedDaysCurrentYear :=   self elapsedDaysForYear: aYearNumber.
	elapsedDaysNextYear :=   self elapsedDaysForYear: aYearNumber + 1.
	
	correction := (elapsedDaysNextYear - elapsedDaysCurrentYear) = 356
		ifTrue: [2]
		ifFalse: [(elapsedDaysCurrentYear - elapsedDaysPreviousYear) = 382
			ifTrue:[1]
			ifFalse:[0]].
	^ correction