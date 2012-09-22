private
baktun: anInt1 katun: anInt2 tun: anInt3 uinal: anInt4 kin: anInt5 hour: anHourNumber minute: aMinuteNumber second: aSecondNumber

	self
		rataDieFromBaktun: anInt1
		katun: anInt2
		tun: anInt3
		uinal: anInt4
		kin: anInt5.
	self timePart: (ClockTime 
					hours: anHourNumber
					minutes: aMinuteNumber
					seconds: aSecondNumber) time / 24.
	^ self