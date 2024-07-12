; stdatmus_z2tdp
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/stdatmus_z2tdp.shtml
height = 100 ; meters
tdp = stdatmus_z2tdp(height)  ; tdp(3) = (/ 14.35, 1.213282, 1001.294 /)
print(tdp)

; Variable: tdp
; Type: float
; Total Size: 12 bytes
;             3 values
; Number of Dimensions: 1
; Dimensions and sizes:	[3]
; Coordinates:
; (0)	14.35
; (1)	1.213282
; (2)	1001.294
