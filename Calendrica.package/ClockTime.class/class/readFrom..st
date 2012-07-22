instance creation
readFrom: aStream
	"Answer a ClockTime instance from
		[<days><daysSeparator>]<60Two><60TwoSpeparator><60One><60OneSeparator><60Zero>[.<fractionOf60Zero>]<60ZeroSeparator>
		<60Two>[.<fractionOf60Two>]<60TwoSeparator>
	where
		<days>
		<60Two>				an Integer number for the coefficient of 60^2, i.e. hours
		<60One>				an Integer number for the coefficient of 60^1, i.e. minutes
		<60Zero>				an Integer number for the coefficient of 60^0, i.e. seconds
		<fractionOf60Zero>	an Integer representing the fraction of the coefficient of 60^0,
			                              i.e. fraction of seconds
		<fractionOf60Two>	an Integer representing the fraction of the coefficient of 60^2,
			                              i.e. hours
		<daysSeparator>		for example $d, NOTE: this is compulsory
		<60TwoSeparator>	for example either symbol $h or one (or more) spaces
		<60OneSeparator>	for example either symbol $m or one (or more) spaces
		<60ZeroSeparator>	the last separator, for example either symbol $s
	"
	| d |
	d := aStream nextDelimited: self symbolForDays.
	aStream atEnd
	ifTrue: [ (aStream last = self symbolForDays)
		ifTrue: ["we have matched something like 1.5d and there is nothing else"
			d:= d asNumber.
			^self decimal: (d*24)]
		ifFalse:["there was no day part"
			^super readFrom: aStream contents withoutLeadingBlanks readStream]]
	ifFalse:["there are other part, i.e. hour/minute/second"
			d:= d asNumber.
			^self decimal: (d sign * ((d abs * 24) + (super readFrom: aStream upToEnd readStream) decimal))]