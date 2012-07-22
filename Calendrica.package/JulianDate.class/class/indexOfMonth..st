helpers
indexOfMonth: aMonthName

	| pattern |
	pattern := (aMonthName replaceAll: $. with: $#) , '*'.
	1 to: self monthNames size do: [ :index | 
		(pattern match: (self monthNames at: index)) ifTrue: [^ index] ].
	self error: aMonthName , ' is not a recognized month name'.