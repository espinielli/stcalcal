astronomy
lunarAltitudeAt: aLocation
	"Return the geocentric altitude of moon at moment, self, at location, aLocation, as a small positive/negative angle in degrees, ignoring parallax and refraction.
	Adapted from 'Astronomical Algorithms' by Jean Meeus, Willmann_Bell, Inc., 1998."
	| alpha altitude beta capH delta lamb phi pos psi theta0 |
	phi := aLocation latitude.
	psi := aLocation longitude.
	lamb := self lunarLongitude.
	beta := self lunarLatitude.
	pos := (AAPositionOnEarth
			lat: (AAGeographicLatitude decimalDegrees: lamb) 
			lon: (AAGeographicLongitude decimalDegrees: beta)).
	alpha := self rightAscensionAt: pos.
	delta := self declinationAt: pos.
	theta0 := self siderealTime.
	capH := (theta0 + psi - alpha) \\ 360.
	altitude := (
		(phi degreeSin * delta degreeSin) +
		(phi degreeCos * delta degreeCos * capH degreeCos)) arcSin radiansToDegrees.
	^ ((altitude + 180) \\ 360) - 180
