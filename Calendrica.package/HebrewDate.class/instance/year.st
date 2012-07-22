accessing
year

	| approximateYear index |
	approximateYear := ((98496 * ((self - self epoch) rd)) // 35975351) + 1. "elapsed days divided the average year length."
	index := approximateYear - 2.
	[index := index + 1] doWhileTrue:[(self class newYearDayForYear: index) <= self].
	^ index - 1