accessing
clocktime
	"return the time part in hour, minute, second."
	^ClockTime decimalHours: (self time * 24)