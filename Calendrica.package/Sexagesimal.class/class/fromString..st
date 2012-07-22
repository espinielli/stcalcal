instance creation
fromString: aString
	"Answer an instance created from a string with the relevant formats (see readFrom:)."

	^ self readFrom: aString readStream.