testing
testReadFrom
	| testDate |
	testDate := (spiniellibirthday convertTo: self targetClass).
	self assert: (self targetClass readFrom: testDate printString readStream) = testDate.
	testDate := (reingoldbirthday convertTo: self targetClass).
	self assert: (self targetClass readFrom: testDate printString readStream) = testDate.
