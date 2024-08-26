; dewtemp_trh
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/dewtemp_trh.shtml

; Wallace and Hobbs [Atmospheric Science: An introductory Survey, Academic Press, p74] state that at t=18 [C] and rh=46.5 %, the dew point temperature is approximately 6.4 C:

tk =   18. + 273.15   ; K
rh =   46.5           ; %

td = dewtemp_trh(tk,rh) - 273.15
; print(td)

; Copyright (C) 1995-2019 - All Rights Reserved
; University Corporation for Atmospheric Research
; NCAR Command Language Version 6.6.2
; The use of this software is governed by a License Agreement.
; See http://www.ncl.ucar.edu/ for more details.


; Variable: td
; Type: float
; Total Size: 4 bytes
;             1 values
; Number of Dimensions: 1
; Dimensions and sizes:	[1]
; Coordinates:
; (0)	6.298157


; ncl -n dewtemp_trh.ncl >> dewtemp_trh_output.txt

do tk=273,374
	do rh=1,100
		begin
		print(dewtemp_trh(tk,rh)-273.15)
		end
	end do
end do
