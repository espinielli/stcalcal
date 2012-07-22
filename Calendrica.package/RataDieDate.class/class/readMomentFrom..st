helpers
readMomentFrom: aStream
	"read the date and time part of the stream"
	| rdPart tPart ratadie time |
	rdPart := (aStream nextDelimited: self delimitersForClockTime first) readStream.
	tPart := aStream upToEnd readStream.

	ratadie := self readRataDieFrom:  rdPart.
	time := self readClockTimeFrom: tPart.

	^ self moment: (ratadie + time decimalDays)