accessing
month

	^ ((self daysSinceEpoch \\ 365) // 30) + 1