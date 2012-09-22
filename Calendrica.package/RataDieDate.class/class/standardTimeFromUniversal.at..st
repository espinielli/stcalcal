astronomy
standardTimeFromUniversal: aNumber at:  aLocation
	"Return standard time from teeRomU in universal time at location, aLocation."
	^aNumber moment + aLocation timezone
