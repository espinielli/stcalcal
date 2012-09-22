astronomy
approxMomentOfSunDepressionAngle: alpha at: aLocation onEvent: early.
	"Return the moment in local time near self when depression angle of sun is alpha (negative if above horizon) at aLocation;
	early is true when MORNING event is sought and false for EVENING.
	Returns BOGUS if depression angle is not reached."
	self flag: #espinTODO.
	"
	ttry := sine_offset(tee, location, alpha)
    date = fixed_from_moment(tee)

    if (alpha >= 0):
        if early:
            alt = date
        else:
            alt = date + 1
    else:
        alt = date + hr(12)

    if (abs(ttry) > 1):
        value = sine_offset(alt, location, alpha)
    else:
        value = ttry


    if (abs(value) <= 1):
        temp = -1 if early else 1
        temp *= mod(hr(12) + arcsin_degrees(value) / deg(360), 1) - hr(6)
        temp += date + hr(12)
        return local_from_apparent(temp, location)
    else:
        return BOGUS
	"