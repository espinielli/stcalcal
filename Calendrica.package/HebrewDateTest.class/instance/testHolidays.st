testing
testHolidays

	"passover"
	self assert: (HebrewDate passoverForGregorianYear: 2012) rd = 734600.
	self assert: (HebrewDate passoverForGregorianYear: 1811) rd = 661187.
	self assert: (HebrewDate passoverForGregorianYear: 1311) rd = 478569.
	self assert: (HebrewDate passoverForGregorianYear: 11) rd = 3747.
	
	""