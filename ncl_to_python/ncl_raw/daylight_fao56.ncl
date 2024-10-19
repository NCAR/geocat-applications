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
