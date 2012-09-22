private
rataDieFromBaktun: anInt1 katun: anInt2 tun: anInt3 uinal: anInt4 kin: anInt5

	self rataDiePart: (self epoch +
		(anInt1 * 144000) +
            (anInt2 * 7200) +
            (anInt3 * 360) +
            (anInt4 * 20) +
            anInt5)
