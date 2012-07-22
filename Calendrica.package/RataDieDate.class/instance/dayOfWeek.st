accessing
dayOfWeek
	"Answer day of the week from a fixed date anInteger."
	^  Weekday forIndex: (self - RataDieDate epoch - Weekday sunday) rd "RD(1) is Monday."