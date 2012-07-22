instance creation
readFrom: aStream
	"Answer an Angle instance from
		<60Two><60TwoSpeparator><60One><60OneSeparator><60Zero>[.<fractionOf60Zero>]<60ZeroSeparator>
		<60Two>[.<fractionOf60Two>]<60TwoSeparator>
	where
		<60Two>				an Integer number for the coefficient of 60^2, i.e. degrees of arc
		<60One>				an Integer number for the coefficient of 60^1, i.e. minutes of arc
		<60Zero>				an Integer number for the coefficient of 60^0, i.e. seconds of arc
		<fractionOf60Zero>	an Integer representing the fraction of the coefficient of 60^0,
			                              i.e. fraction of seconds of arc
		<fractionOf60Two>	an Integer representing the fraction of the coefficient of 60^2,
			                              i.e. degrees of arc
		<60TwoSeparator>	for example either symbol $° or one (or more) spaces
		<60OneSeparator>	for example either symbol $' or one (or more) spaces
		<60ZeroSeparator>	the last separator
	"
	| d m s sign |
	d := Number readFrom: aStream.
	sign := d negative
				ifTrue: [-1]
				ifFalse: [1].
	self readSymbolOrSpace: self symbolForSixtyTwo fromStream: aStream.
	^d isFloat
		ifTrue: [
			self decimal: d]
		ifFalse: [
			aStream atEnd
				ifTrue: [self decimal: d]
				ifFalse: [
					"read minutes"
					m := Integer readFrom: aStream.
					self readSymbolOrSpace: self symbolForSixtyOne fromStream: aStream.
					"read seconds"
					s := Number readFrom: aStream.
					self readSymbolOrSpace: self symbolForSixtyZero fromStream: aStream.
					self sixtyTwo: (d abs * sign) sixtyOne: (m abs * sign) sixtyZero: (s abs * sign)]]