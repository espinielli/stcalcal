testing
testReadFromBisextile

	self assert: (self targetClass readFrom: bisextile printString readStream) = bisextile.
