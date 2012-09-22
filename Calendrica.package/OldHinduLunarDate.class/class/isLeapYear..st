testing
isLeapYear: oldHinduLunarYear
    "true if oldHinduLunarYear is a leap year on the old Hindu calendar."
    ^ (((oldHinduLunarYear * OldHinduSolarDate aryaSolarYear) - OldHinduSolarDate aryaSolarMonth) \\ self aryaLunarMonth) >= (23902504679/1282400064)
