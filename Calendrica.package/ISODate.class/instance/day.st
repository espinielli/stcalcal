accessing
day
	"the day of the ISO week number. ISO count Monday as 1, Tuesday as 2, ... , Sunday as 7."
	^ (self - RataDieDate epoch) rd @\\ 7