;calcDayanomTLL
;f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h1.aice_d.18500101-20141231.nc", "r")
;time = f->time(54749:58398)
;TIME = cd_calendar(time,0)
;year = toint(TIME(:,0))
;month = toint(TIME(:,1))
;day = toint(TIME(:,2))
;ddd = day_of_year(year, month, day)
;yyyyddd = year*1000+ddd
;aice = f->aice_d(54749:58398,:,:)
;aiceClmDay = clmDayTLL(aice, yyyyddd)
;aiceDayAnom = calcDayAnomTLL(aice, yyyyddd, aiceClmDay)
;print(aiceDayAnom(0,365,300))
;aiceDayAnom = 0.2156208

;calcMonAnomTLL
;f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
;aice = f->aice(1799:1918,:,:)
;aiceClmMon = clmMonTLL(aice)
;aiceMonAnom = calcMonAnomTLL(aice,aiceClmMon)
;print(aiceMonAnom(0,365,300))
;aliceMonAnom = 0.09780759

;clmDayTLL
;f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h1.aice_d.18500101-20141231.nc", "r")
;time = f->time(54749:58398)
;TIME = cd_calendar(time,0)
;year = toint(TIME(:,0))
;month = toint(TIME(:,1))
;day = toint(TIME(:,2))
;ddd = day_of_year(year, month, day)
;yyyyddd = year*1000+ddd
;aice = f->aice_d(54749:58398,:,:)
;aiceClmDay = clmDayTLL(aice, yyyyddd)
;print(aiceClmDay(0,365,300))
;aiceClmDay = 0.4031426

;clmMonTLL
;f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
;aice = f->aice(1799:1918,:,:)
;aiceClmMon = clmMonTLL(aice)
;print(aiceClmMon(0,365,300))
;aiceClmMon = 0.1261306

;month_to_season
;f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
;aice = f->aice(1799:1918,:,:)
;aiceSeason = month_to_season(aice, "ASO")
;print(aiceSeason(0,365,300))
;aiceSeason = 4.922778e-06

;rmMonAnnCycTLL
;f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
;aice = f->aice(1799:1918,:,:)
;aiceRmMonAnnCyc = rmMonAnnCycTLL(aice)
;print(aiceRmMonAnnCyc(0,365,300))
;aiceRmMonAnnCyc = 0.09780759

;stdMonTLL
;f = addfile("b.e21.BHIST.f09_g17.CMIP6-historical.003.cice.h.aice.185001-201412.nc", "r")
;aice = f->aice(1799:1918,:,:)
;aiceStdMon = stdMonTLL(aice)
;print(aiceStdMon(0,365,300))
;aiceStdMon = 0.1073168
