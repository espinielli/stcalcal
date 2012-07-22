private
sixtyTwoPrintOn: aStream
	"print sixtyTwo part in days (if any) and hours/minutes/seconds"
	self days isZero
		ifFalse: [self daysPrintOn: aStream].
	self hours printOn: aStream.
	aStream nextPut: self class symbolForSixtyTwo.
