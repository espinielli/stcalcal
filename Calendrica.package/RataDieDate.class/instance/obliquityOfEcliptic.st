astronomy
obliquityOfEcliptic
	"Return precise (mean) obliquity of ecliptic at this moment."
	| u |
	u := self julianCenturiesSinceJ2000 / 100.
	(u abs < 1) ifTrue: [^DomainError signal: 'Year must be +/-10000 years around J2000.0'].
	^ AAAngle decimalDegrees: ((AAPolynomial coefficients: {
		(AAAngle degrees: 23 minutes: 26 seconds: 21.448) decimalDegrees. "obliquity at TD J2000"
		(AAAngle degrees: 0 minutes: 0seconds: -4680.93) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: -1.55) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: 1999.25) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: -51.38) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: -249.67) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: -39.05) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: 7.12) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: 27.87) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: 5.79) decimalDegrees.
		(AAAngle degrees: 0 minutes: 0 seconds: 2.45) decimalDegrees} ) valueAt: u)