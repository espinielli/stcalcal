instance creation
readRataDieFrom: aStream
	"something like '1966/Winter/15/Monday'."
	| year season week weekday date |
	aStream atEnd ifTrue: [^nil].
	year := Integer readFrom: aStream.
	aStream next = $/ ifFalse: [^nil].

	season := (aStream upTo: $/) asSeason.

	week := Integer readFrom: aStream.
	aStream next = $/ ifFalse: [^nil].

	weekday := (aStream upToEnd) asWeekday.
	date :=  self year: year season: season week: week weekday: weekday.
	^ date rd