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

; satvpr_temp_fao56
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Crop/satvpr_temp_fao56.shtml

; ncl -n satvpr_temp_fao56.ncl >> satvpr_temp_fao56_output.txt

print("Temperature (F), Saturation Vapor Pressure (kPa)")
do temp=33,212
	begin
		sat_vpr_pressure = satvpr_temp_fao56(temp, (/2, 2/))
		print (temp + "," + sat_vpr_pressure)
	end
end do

; satvpr_tdew_fao56
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Crop/satvpr_tdew_fao56.shtml

; ncl -n satvpr_tdew_fao56.ncl >> satvpr_tdew_fao56_output.txt

print("Temperature (F), Actual Saturation Vapor Pressure (kPa)")
do temp=33,212
	begin
		act_sat_vpr_pressure = satvpr_tdew_fao56(temp, (/2, 2/))
		print (temp + "," + act_sat_vpr_pressure)
	end
end do

; satvpr_slope_fao56
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Crop/satvpr_slope_fao56.shtml

; ncl -n satvpr_slope_fao56.ncl >> satvpr_slope_fao56_output.txt

print("Temperature (F), Slope of Saturation Vapor Pressure Curve (kPa)")
do temp=33,212
	begin
		slope_satvpr = satvpr_slope_fao56(temp, (/2, 2/))
		print (temp + "," + slope_satvpr)
	end
end do
