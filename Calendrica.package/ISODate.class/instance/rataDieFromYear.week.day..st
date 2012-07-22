private
rataDieFromYear: aYear week: aWeek day: aDay

	| dec28PreviousYear |
	dec28PreviousYear := self class year: aYear - 1 month: 12 day: 28.
	self rataDiePart:
		((dec28PreviousYear) nthOccurrence: aWeek ofWeekday: Weekday sunday) rd + aDay