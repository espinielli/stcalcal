accessing
year

	| daysSinceEpoch |
	daysSinceEpoch := self fullDaysBetween: self epoch.
	^ ((30 * daysSinceEpoch) + 10646) // 10631  