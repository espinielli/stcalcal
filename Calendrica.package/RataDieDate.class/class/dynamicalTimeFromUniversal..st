astronomy
dynamicalTimeFromUniversal: aNumber
	"Return Dynamical time from Universal time, aNumber.."
	^aNumber moment + self ephemerisCorrectionOn: aNumber
