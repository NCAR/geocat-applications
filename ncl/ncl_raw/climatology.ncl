; calcDayAnomTLL
; Adapted from www.ncl.ucar.edu/Document/Functions/Contributed/calcDayanomTLL.shtml
f = addfile("CMIP6_sea_ice_daily_subset.nc", "r")
time = f->time
time@calendar = "noleap"
TIME = cd_calendar(time,0)
year = toint(TIME(:,0))
year@calendar = "noleap"
month = toint(TIME(:,1))
day = toint(TIME(:,2))
ddd = day_of_year(year, month, day)
yyyyddd = year*1000+ddd
yyyyddd@calendar = "noleap"
aice_d = f->aice_d
aiceClmDay = clmDayTLL(aice_d, yyyyddd)
aiceDayAnom = calcDayAnomTLL(aice_d, yyyyddd, aiceClmDay)
print(aiceDayAnom(0,10,10))

; calcMonAnomTLL
; Adapted from www.ncl.ucar.edu/Document/Functions/Contributed/calcMonAnomTLL.shtml
f = addfile("CMIP6_sea_ice_monthly_subset.nc", "r")
aice = f->aice
aiceClmMon = clmMonTLL(aice)
aiceMonAnom = calcMonAnomTLL(aice,aiceClmMon)
print(aiceMonAnom(0,10,10))

; clmDayTLL
; Adapted from www.ncl.ucar.edu/Document/Functions/Contributed/clmDayTLL.shtml
f = addfile("CMIP6_sea_ice_daily_subset.nc", "r")
time = f->time
time@calendar = "noleap"
TIME = cd_calendar(time,0)
year = toint(TIME(:,0))
year@calendar = "noleap"
month = toint(TIME(:,1))
day = toint(TIME(:,2))
ddd = day_of_year(year, month, day)
yyyyddd = year*1000+ddd
yyyyddd@calendar = "noleap"
aice_d = f->aice_d
aiceClmDay = clmDayTLL(aice_d, yyyyddd)
print(aiceClmDay(0,10,10))

; clmMonTLL
; Adapted from www.ncl.ucar.edu/Document/Functions/Contributed/clmMonTLL.shtml
f = addfile("CMIP6_sea_ice_monthly_subset.nc", "r")
aice = f->aice
aiceClmMon = clmMonTLL(aice)
print(aiceClmMon(0,10,10))

; month_to_season
; Adapted from www.ncl.ucar.edu/Document/Functions/Contributed/calcDayAnomTLL.shtml
f = addfile("CMIP6_sea_ice_monthly_subset.nc", "r")
aice = f->aice
aiceSeason = month_to_season(aice, "ASO")
print(aiceSeason(0,10,10))

; rmMonAnnCycTLL
; Adapted from www.ncl.ucar.edu/Document/Functions/Contributed/month_to_season.shtml
f = addfile("CMIP6_sea_ice_monthly_subset.nc", "r")
aice = f->aice
aiceRmMonAnnCyc = rmMonAnnCycTLL(aice)
print(aiceRmMonAnnCyc(0,10,10))

; stdMonTLL
; Adapted from www.ncl.ucar.edu/Document/Functions/Contributed/stdMonTLL.shtml
f = addfile("CMIP6_sea_ice_monthly_subset.nc", "r")
aice = f->aice
aiceStdMon = stdMonTLL(aice)
print(aiceStdMon(0,10,10))
