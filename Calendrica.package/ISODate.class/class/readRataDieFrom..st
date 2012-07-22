helpers
readRataDieFrom: aStream

	| year week day date |
	aStream atEnd ifTrue: [^nil].
	year := Integer readFrom: aStream.
	aStream next = $/ ifFalse: [^nil].

	week := Integer readFrom: aStream.
	aStream next = $/ ifFalse: [^nil].

	day := Integer readFrom: aStream.
	date :=  self year: year week: week day: day.
	^ date rd