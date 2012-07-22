helpers
calendarClassForName: aPrintedCalendarName

	^ Smalltalk at: (aPrintedCalendarName onlyLetters, 'Date') asSymbol