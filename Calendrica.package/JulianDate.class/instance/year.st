accessing
year

	| approx |
	approx := ((4 * (self - JulianDate epoch) rd) + 1464) // 1461.
	^ (approx <= 0) ifTrue:[approx - 1] ifFalse: [approx]