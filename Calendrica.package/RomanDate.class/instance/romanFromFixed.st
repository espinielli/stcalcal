private
romanFromFixed

	| jdate |
	jdate := self asJulianDate.
	jdate day = 1
		ifTrue:[
			^ self
				year: jdate year
				month: jdate month
				event: RomanMonthEvent kalends 
				count: 1
				leap: false].
	(jdate day <= (self class nonesOfMonth: jdate month))
		ifTrue:[
			^ self
				year: jdate year
				month: jdate month
				event: RomanMonthEvent nones
				count: ((self class nonesOfMonth: jdate month) - jdate day +1)
				leap: false].
	(jdate day <= (self class idesOfMonth: jdate month))
		ifTrue:[
			^ self
				year: jdate year
				month: jdate month
				event: RomanMonthEvent ides
				count: ((self class idesOfMonth: jdate month) - jdate day +1)
				leap: false].
	[jdate month ~= 2], [jdate isLeapYear not]
		ifAnyTrue: [ | m y  k |
			m := (jdate month + 1) @\\ 12.
			y := m ~= 1
					ifTrue:[jdate year]
					ifFalse:[jdate year ~= -1
								ifTrue:[jdate year + 1]
								ifFalse:[1]].
			k := RomanDate year: y month: m event: RomanMonthEvent kalends count: 1 leap: false.
			^ self
				year: y
				month: m
				event: RomanMonthEvent kalends
				count: k rd - self rd + 1
				leap: false].
	jdate day < 25
		ifTrue:[
			^ self
				year: jdate year
				month: 3
				event:  RomanMonthEvent kalends
				count: 30 - jdate day
				leap: false]
		ifFalse:[	
			^ self
				year: jdate year
				month: 3
				event:  RomanMonthEvent kalends
				count: 31 - jdate day
				leap: (jdate day = 25)] "25 for official calendar, 23 for unofficial and medieval usage"