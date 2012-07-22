private
year: aYearNumber month: aMonthNumber event: aMonthEvent count: daysUntilEvent leap: aLeapDayBoolean hour: anHour minute: someMinutes second: someSeconds
	"daysUntilEvent counts the number of days inclusive until next event;
	aLeapDayBoolean marks the intercalary day for leap years, i.e. 'ante diem bis VI Kal. Mar.' for 'the second sixth
	day before the kalends of March'"
	| part1 part2 part3 |
	"save relevant components of the relevant Roman date (makes accessors implementation easier...)"
	year := aYearNumber.
	month := aMonthNumber.
	event := aMonthEvent.
	count := daysUntilEvent.
	leap := aLeapDayBoolean.
	"calculate rata die"
	part1 := self approximateRataDieFromYear: aYearNumber month: aMonthNumber event: aMonthEvent.
	part2 := self adjustmentForLeapYear: aYearNumber month: aMonthNumber event: aMonthEvent count: daysUntilEvent.
	part3 := self adjustmentForLeapDay: aLeapDayBoolean.
	self rd: (part1 rd - daysUntilEvent + part2 rd + part3 rd).

	self timePart: (ClockTime 
					hours: anHour
					minutes: someMinutes
					seconds: someSeconds) time / 24.