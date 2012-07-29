testing
testYearLengthCorrection

	self assert: (HebrewDate yearLengthCorrectionForYear: 1) = 0.
	self assert: (HebrewDate yearLengthCorrectionForYear: 7) = 2.
