*calendrica-core
asRataDieDate

	^self dayMonthYearDo: [ :d :m :y |
		(GregorianDate year: y month: m day: d hour: self hour minute: self minute second: self second) asRataDieDate]