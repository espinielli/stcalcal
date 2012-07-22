printing
printRataDieOn: aStream

	self printEventOn: aStream.
	aStream nextPut: Character space.
	self printMonthOn: aStream.
	aStream nextPut: Character space.
	self printYearOn: aStream. 