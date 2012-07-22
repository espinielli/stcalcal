accessing
season

	^ self < (self class winterForGregorianYear: self year)
		ifTrue: [Season summer]
		ifFalse:[Season winter]