; daylight_fao56
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Crop/daylight_fao56.shtml

jday  = 246
lat   = -20.0
sunmax = daylight_fao56(jday, lat)   ;  11.7 hours
print(sunmax)

; Variable: sunmax
; Type: float
; Total Size: 4 bytes
;            1 values
; Number of Dimensions: 1
; Dimensions and sizes:	[1]
; Coordinates:
; Number Of Attributes: 4
;  long_name :	maximum daylight: FAO_56
;  units :	hours/day
;  url :	http://www.fao.org/docrep/X0490E/x0490e07.htm
;  info :	FAO 56; EQN 34; daylight_fao56
; (0)	11.66559
