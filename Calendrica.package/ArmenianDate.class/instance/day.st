accessing
day

	^ self daysSinceEpoch - (365 * (self year - 1)) - (30 * (self month - 1)) + 1