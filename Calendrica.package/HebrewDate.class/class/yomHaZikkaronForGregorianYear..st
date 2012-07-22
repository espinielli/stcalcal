holidays
yomHaZikkaronForGregorianYear: aYear

	| hebrewYear iyyar4 iyyar4DoW |
	hebrewYear := aYear - self epoch asGregorianDate year.
	iyyar4 := self year: hebrewYear month: HebrewMonth iyyar day: 4.
	iyyar4DoW := iyyar4 dayOfWeek.

	[iyyar4DoW = Weekday thursday], [iyyar4DoW = Weekday friday]
		ifAnyTrue: [^ iyyar4 previousWeekday: Weekday wednesday].

	(iyyar4DoW = Weekday sunday)
		ifTrue: [^ iyyar4 nextDay].

	^ iyyar4