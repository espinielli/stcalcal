printing
printMonthOn: aStream

	| monthToPrint monthNameAbbreviated |
	monthToPrint := [self event = RomanMonthEvent kalends] , [self month = 12]
			ifAllTrue: [1]
			otherwise: [self month].
	monthNameAbbreviated := (self class monthNames at: monthToPrint) truncateTo: 3.
	aStream nextPutAll: monthNameAbbreviated , '.'