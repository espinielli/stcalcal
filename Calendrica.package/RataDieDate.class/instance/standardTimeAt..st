astronomy
standardTimeAt: aLocation
	"Return standard time from self (assumed local time) at locale, aLocation."
	^self class standardTimeFromUniversal: (self universalTimeAt: aLocation) at: aLocation
