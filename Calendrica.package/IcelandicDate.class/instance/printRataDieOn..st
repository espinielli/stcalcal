printing
printRataDieOn: aStream
	"Print the non-time part."

	self year printOn: aStream.
	aStream nextPut: $/.
	self season printOn: aStream.
	aStream nextPut: $/.
	self week printOn: aStream.
	aStream nextPut: $/.
	self weekday printOn: aStream.