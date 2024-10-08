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
