accessing
year

	| rdSinceCopticEpoch |
	rdSinceCopticEpoch := self fullDaysBetween: self epoch.
	^ (4 * rdSinceCopticEpoch + 1463) // 1461