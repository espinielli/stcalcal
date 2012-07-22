instance creation
readFrom: aStream
	"read an instance of myself from aStream"
	| momentPart calendarNamePart calendarClass |
	momentPart := (aStream upTo: self delimitersForCalendarName first) withoutTrailingBlanks.
	calendarNamePart := (aStream upTo: self delimitersForCalendarName last) withoutBlanks.
	calendarClass := self calendarClassForName: calendarNamePart.
	^ calendarClass readMomentFrom: momentPart readStream