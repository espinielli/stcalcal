In non prioritized order:
[ ] do all espinTODO (look for senders to get full list).
[ ] Add a test for package dependencies, i.e. lik PackageDependencyTest>>testMultilingual.
[ ] ? Rename IntegerSearchStream
[ ] ? Model Gregorian/Coptic/... months with proper classes like HebrewMonth ???
[X] Document the meaning of Nones/Kalens/...
[ ] Finish Gregorian holidays, i.e. easter + tests.
[ ] Complete HebrewDate holidays with tests
[ ] add Unicode names for months/days/holidays and relevant pretty print
[x] Avoid to make EthiopicDate a subclass of CopticDate, i.e. avoid inheriting holidays...same for other calendars?
    Subclassing could stay for RomanDate and ISODate which are just different representations of the same calendar.
[x] Test leap dates in Gregorian, Roman, Islamic, ...
[] express shElaOutsideIsrael in a way which does not depend on CopticDate
[] add smoke tests for OldHinduLunarDate
[] PersianDate: as other astronomical calendars needs the astronomical algorithms...
[] Fill correct dates for Orthodox Easter in GregorianDateTest>>testHolidays
[] read CSV files for test data and make use of them in tests.
[] synodic constants in AAAstronomicalConstants?