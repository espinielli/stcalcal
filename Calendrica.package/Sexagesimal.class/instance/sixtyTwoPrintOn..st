private
sixtyTwoPrintOn: aStream
	"print sixtyTwo part. This allows subclasses to refine (see AAClockTime)."
	self sixtyTwo abs printOn: aStream.
	aStream nextPut: self class symbolForSixtyTwo.
