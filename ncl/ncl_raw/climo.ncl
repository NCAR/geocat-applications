; calcDayanomTLL
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/calcDayanomTLL.shtml
f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h1.aice_d.18500101-20141231.nc", "r")
time = f->time(54749:58398)
TIME = cd_calendar(time,0)
year = toint(TIME(:,0))
month = toint(TIME(:,1))
day = toint(TIME(:,2))
ddd = day_of_year(year, month, day)
yyyyddd = year*1000+ddd
aice = f->aice_d(54749:58398,:,:)
aiceClmDay = clmDayTLL(aice, yyyyddd)
aiceDayAnom = calcDayAnomTLL(aice, yyyyddd, aiceClmDay) ; aiceDayAnom = 0.2156208
print(aiceDayAnom(0,365,300))

; calcMonAnomTLL
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/calcMonAnomTLL.shtml
f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
aice = f->aice(1799:1918,:,:)
aiceClmMon = clmMonTLL(aice)
aiceMonAnom = calcMonAnomTLL(aice,aiceClmMon) ; aliceMonAnom = 0.09780759
print(aiceMonAnom(0,365,300))

; clmDayTLL
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/clmDayTLL.shtml
f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h1.aice_d.18500101-20141231.nc", "r")
time = f->time(54749:58398)
TIME = cd_calendar(time,0)
year = toint(TIME(:,0))
month = toint(TIME(:,1))
day = toint(TIME(:,2))
ddd = day_of_year(year, month, day)
yyyyddd = year*1000+ddd
aice = f->aice_d(54749:58398,:,:)
aiceClmDay = clmDayTLL(aice, yyyyddd) ; aiceClmDay = 0.4031426
print(aiceClmDay(0,365,300))

; clmMonTLL
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/clmMonTLL.shtml
f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
aice = f->aice(1799:1918,:,:)
aiceClmMon = clmMonTLL(aice) ; aiceClmMon = 0.1261306
print(aiceClmMon(0,365,300))

; month_to_season
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/calcDayAnomTLL.shtml
f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
aice = f->aice(1799:1918,:,:)
aiceSeason = month_to_season(aice, "ASO") ; aiceSeason = 4.922778e-06
print(aiceSeason(0,365,300))

; rmMonAnnCycTLL
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/month_to_season.shtml
f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
aice = f->aice(1799:1918,:,:)
aiceRmMonAnnCyc = rmMonAnnCycTLL(aice) ; aiceRmMonAnnCyc = 0.09780759
print(aiceRmMonAnnCyc(0,365,300))

; stdMonTLL
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/stdMonTLL.shtml
f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
aice = f->aice(1799:1918,:,:)
aiceStdMon = stdMonTLL(aice) ; aiceStdMon = 0.1073168
print(aiceStdMon(0,365,300))
