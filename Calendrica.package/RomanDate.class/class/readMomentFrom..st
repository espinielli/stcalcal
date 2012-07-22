instance creation
readMomentFrom: aStream
	"read the date and time part of the stream"
	
	"the trick here is that for Roman style dates we can have things like
	ante diem III Kalends Nov. MCMXLV 0h0m0s
	|      date                                       | time     |
	where the <date> part is variable in number of elements
	('' or 'ante diem' + <roman number> or 'pridie') + 
	<event, i.e. 'Kalends'> + 
	<abbreviated month> + 
	<roman number>
	Note: <date> and <time> are separated by what is returned by
		>>delimitersForClockTime first, but the same character is also
		present in the date part..."

	| reversedStream timePart datePart datePartSize ratadie time |

	reversedStream := aStream reverseContents.
	timePart := (reversedStream upTo: self delimitersForClockTime last) withoutTrailingBlanks reversed.
	datePartSize := aStream contents size - timePart contents size.
	aStream reset.
	datePart := aStream next: datePartSize - 1.
	
	ratadie := self readRataDieFrom:  datePart readStream.
	time := self readClockTimeFrom: timePart readStream.

	^ self moment: (ratadie + time decimalDays)