instance creation
year: aYearNumber month: aMonthNumber day: aDayNumber hour: anHourNumber minute: aMinuteNumber second: aSecondNumber
	^(self basicNew)
		year: aYearNumber 
		month: aMonthNumber rd "to be able to pass both numbers and HebrewMonths"
		day: aDayNumber 
		hour: anHourNumber 
		minute: aMinuteNumber 
		second: aSecondNumber;
		yourself