; dewtemp_trh
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/dewtemp_trh.shtml

; ncl -n dewtemp_trh.ncl >> dewtemp_trh_output.txt

print("Temperature (K), Relative Humidity (%), Dew Temperature (C)")
do tk=273,374
	do rh=1,100
		begin
		dewtemp = dewtemp_trh(tk,rh)-273.15
		print (tk +","+ rh +","+ dewtemp)
		end
	end do
end do

; daylight_fao56
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Crop/daylight_fao56.shtml

; ncl -n daylight_fao56.ncl >> daylight_fao56_output.txt

print("DOY, Latitude (Degrees), Daylight Hours")
do doy=0,365
	do lat=-66,66
		begin
		daylight_hours = daylight_fao56(doy, lat)
		print (doy +","+ lat +","+ daylight_hours)
		end
	end do
end do

; heat_index_nws
; https://www.ncl.ucar.edu/Document/Functions/Contributed/heat_index_nws.shtml

; ncl -n heat_index_nws.ncl >> heat_index_nws_output.txt

print("Temperature (F), Relative Humidity (%), Alternate Coefs (True/False), Heat Index (F)")
do tf=0, 115
	do rh=1,100
		begin
		heatindex = heat_index_nws(tf,rh,(/2,2/), False)
		print (tf +","+ rh +"," + "0" + "," + heatindex)
		end
	end do
end do

do tf=0,115
	do rh=1,100
		begin
		heatindex = heat_index_nws(tf,rh,(/2,2/), True)
		print (tf +","+ rh +"," + "1" + "," + heatindex)
		end
	end do
end do
