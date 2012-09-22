accessing
tun

	| dayOfBaktun dayOfKatun dayOfTun |
	dayOfBaktun := self longCount \\ 144000.
	dayOfKatun := dayOfBaktun \\ 7200.
	^dayOfKatun // 360
