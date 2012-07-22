instance creation
forIndex: anIndex
	"create a weekday according to (modulo 7) anIndex"
	^ WeekdayTable at: (anIndex \\ 7)