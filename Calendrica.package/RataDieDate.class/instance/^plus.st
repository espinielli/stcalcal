arithmetic
+ aRataDieOrWeekday
	"sums rata dies or weekdays or durations (i.e. just whatever responds to #moment)"
	^ self class moment: (self moment + aRataDieOrWeekday moment)
	