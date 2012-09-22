astronomy
sineOffsetAt: aLocation forSunDepresssionAngle: alpha
	"Return sine of angle between position of sun at local time self and when its depression is alpha at aLocation.
    Out of range when it does not occur."
	| delta phi teePrime |
	phi := aLocation latitude.
	teePrime := self universalTimeAt: aLocation.
	delta := teePrime asRataDieDate
				declinationAt: (AAPositionOnEarth
					lat: (AAGeographicLatitude decimalDegrees: 0) 
					lon: (teePrime asRataDieDate solarLongitude)).
	^ AAAngle decimalDegrees: ((phi radiansToDegrees * delta radiansToDegrees tan) +
		(alpha degreeSin / (delta degreeCos * phi degreeCos)))
