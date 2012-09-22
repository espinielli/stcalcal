accessing
uinal

	| dayOfBaktun dayOfKatun dayOfTun |
	dayOfBaktun := self longCount \\ 144000.
	dayOfKatun := dayOfBaktun \\ 7200.
	dayOfTun := dayOfKatun \\ 360.
	^dayOfTun // 20
