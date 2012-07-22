printing
printEventOn: aStream

	self count = 1
		ifTrue:[aStream nextPutAll: 'pridie'. ^self].
	[self count = 6] , [self leap]
		ifAllTrue: [aStream nextPutAll: 'ante diem bis ']
		ifAnyTrue: [aStream nextPutAll: 'ante diem ']
		otherwise: [aStream nextPutAll: 'ante diem '].
	aStream
		nextPutAll: self count printStringRoman;
		nextPut: Character space;
		nextPutAll: self event name.