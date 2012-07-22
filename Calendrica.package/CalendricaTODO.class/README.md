In non prioritized order:
[ ] ? Rename IntegerSearchStream
[ ] ? Model Gregorian/Coptic/... months with proper classes like HebrewMonth ???
[ ] Document the meaning of Nones/Kalens/...
[ ] Finish Gregorian holidays, i.e. easter + tests.
[ ] Complete HebrewDate holidays with tests
[ ] add Unicode names for months/days/holidays and relevant pretty print
[x] Avoid to make EthiopicDate a subclass of CopticDate, i.e. avoid inheriting holidays...same for other calendars?
    Subclassing could stay for RomanDate and ISODate which are just different representations of the same calendar.
[x] Test leap dates in Gregorian, Roman, Islamic, ...