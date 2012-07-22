testing
testHolidays

	self assert: reingoldbirthday easter = (GregorianDate year: reingoldbirthday year month: 4 day: 1).
	self assert: spiniellibirthday easter = (GregorianDate year: spiniellibirthday year month: 3 day: 26).

	"These are to cover the cases for adjusting shifted epact"
	self assert: (GregorianDate easterForYear: 2011) = (GregorianDate year: 2011 month: 4 day: 24).
	self assert: (GregorianDate easterForYear: 2006) = (GregorianDate year: 2006 month: 4 day: 16).
	self assert: (GregorianDate easterForYear: 2307) = (GregorianDate year: 2307 month: 4 day: 21).