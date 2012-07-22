helpers
readRataDieFrom: aStream
	"Roman style dates we can have things like
		ante diem III Kalends Nov. MCMXLV 0h0m0s
		|      date                                       | time     |
	where the <date> part is variable in number of elements
	('' or 'ante diem' [+ 'bis''] + <roman number> or 'pridie') +
	<event, i.e. 'Kalends'> +
	<abbreviated month> +
	<roman number>"
	| parts yy mm ev count leap date |
	parts := aStream contents substrings.
	yy := parts last romanNumber.
	parts := parts allButLast.
	mm := self indexOfMonth: parts last.
	parts := parts allButLast.
	ev := parts last asRomanMonthEvent.
	parts := parts allButLast.

	count := parts size = 0 ifTrue: [0]. "empty string"
	count := parts size = 1 ifTrue: [-1]. "pridie"
	leap := parts size = 4. "bis"
	count := parts last romanNumber.
	
	date :=  self year: yy month: mm event: ev count: count leap: leap.
	^ date rd