print("Temperature (F), Relative Humidity (%), Alternate Coefs (True/False), Heat Index (F)")
do tf=80,115
	do rh=40,100
		begin
		heatindex = heat_index_nws(tf,rh,(/2,2/), False)
		print (tf +","+ rh +"," + "0" + "," + heatindex)
		end
	end do
end do

do tf=70,115
	do rh=1,80
		begin
		heatindex = heat_index_nws(tf,rh,(/2,2/), True)
		print (tf +","+ rh +"," + "1" + "," + heatindex)
		end
	end do
end do
