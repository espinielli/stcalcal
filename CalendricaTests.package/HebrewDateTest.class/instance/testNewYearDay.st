testing
testNewYearDay

	self assert: (HebrewDate newYearDayForYear: reingoldbirthday asHebrewDate year)  = (HebrewDate year: 5706 month: 7 day: 1).
