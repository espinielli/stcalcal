accessing
month

	| y priorDays correction |
	y := self year.
	priorDays := self fullDaysBetween: self newYearDay.
	correction := (self rd < (self class year: y month: 3 day: 1) rd)
					ifTrue: [0]
					ifFalse: [(self isLeapYear)
						ifTrue:[1]
						ifFalse:[2]].
	^ ((12 * (priorDays + correction)) + 373) // 367