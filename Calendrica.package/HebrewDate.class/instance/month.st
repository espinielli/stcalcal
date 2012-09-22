accessing
month

	| start month |
	start := (self < (HebrewDate year: self year month: HebrewMonth nisan day: 1))
		ifTrue: [HebrewMonth tishri]
		ifFalse:[HebrewMonth nisan].

	month := (IntegerSearchStream from: start rd withCondition: [:m | | date |
		date:= HebrewDate year: self year month: m day: (self class lastDayOfMonth: m forYear: self year).
		self rd <= date rd]) min.
	^ HebrewMonth month: month