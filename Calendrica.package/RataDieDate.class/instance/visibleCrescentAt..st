astronomy
visibleCrescentAt: aLocation
	"Return S. K. Shaukat's criterion for likely visibility of crescent moon on eve of self at aLocation."
	| duskPreviousDay tee phase altitude arcOfLight |
	duskPreviousDay := (self - 1) duskAt: aLocation withSunDepressionAngle: 4.5.
	tee := self class universalTimeFromStandard: duskPreviousDay at: aLocation.
	tee := RataDieDate moment: tee.
	phase := tee lunarPhase.
	altitude := tee lunarAltitudeAt: aLocation.
	arcOfLight := (tee lunarLatitude degreeCos * phase degreeCos) arcCos radiansToDegrees.
	^ (0 < phase and: [phase < 90]) and:
		[10.6 <= arcOfLight and: [arcOfLight <= 90]] and:
		[altitude > 4.1]