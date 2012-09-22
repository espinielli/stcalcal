astronomy
universalTimeFromDynamical: aNumber
	"Return Universal time from Dynamical time, aNumber.."
	^aNumber moment - self ephemerisCorrectionOn: aNumber
