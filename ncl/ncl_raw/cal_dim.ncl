; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/days_in_month.shtml

year  = (/1996, 1997, 1, 1500/)
month = (/ 2, 2, 1, 2/)

year@calendar = "standard"
dim = days_in_month(year,month)  ; dim = (/29,28,31,28/)
print(dim)

year@calendar = "noleap"
dim = days_in_month(year,month)  ; dim = (/28,28,31,28/)
print(dim)

year@calendar = "all_leap"
dim = days_in_month(year,month)  ; dim = (/29,29,31,29/)
print(dim)

year@calendar = "360_day"
dim = days_in_month(year,month)  ; dim = (/30,30,30,30/)
print(dim)

year@calendar = "gregorian"
dim = days_in_month(year,month)  ; dim = (/29,28,31,28/)
print(dim)

year@calendar = "julian"
dim = days_in_month(year,month)  ; dim = (/29,28,31,29/)
print(dim)

year@calendar = "365_day"
dim = days_in_month(year,month)  ; dim = (/28,28,31,28/)
print(dim)

year@calendar = "366_day"
dim = days_in_month(year,month)  ; dim = (/29,29,31,29/)
print(dim)

year@calendar = "none"
dim = days_in_month(year,month)  ; dim = (/29,28,31,28/)
print(dim)
