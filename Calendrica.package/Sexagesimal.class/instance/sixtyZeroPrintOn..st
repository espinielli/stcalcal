private
sixtyZeroPrintOn: aStream
	"print sixtyZero part.
	(It follws the same pattern as sixtyTwoPrintOn:)."
	self sixtyZero abs printOn: aStream.
	aStream nextPut: self class symbolForSixtyZero.