printing
printCalendarNameOn: aStream

	aStream
		nextPut: self delimitersForCalendarName first;
		nextPutAll: self calendarName;
		nextPut: self delimitersForCalendarName last