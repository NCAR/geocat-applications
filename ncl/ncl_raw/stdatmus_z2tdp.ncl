; stdatmus_z2tdp
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/stdatmus_z2tdp.shtml

height = 0 ; meters
tdp = stdatmus_z2tdp(height)  ; tdp(3) = (/ 15, 1.224999, 1013.25 /)
print(tdp)

; Variable: tdp
; Type: float
; Total Size: 12 bytes
;             3 values
; Number of Dimensions: 1
; Dimensions and sizes:	[3]
; Coordinates:
; (0)	15
; (1)	1.224999
; (2)	1013.25

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

height = 1000 ; meters
tdp = stdatmus_z2tdp(height)  ; tdp(3) = (/ -17.5, 0.7361153, 540.1991 /)
print(tdp)

; Variable: tdp
; Type: float
; Total Size: 12 bytes
;             3 values
; Number of Dimensions: 1
; Dimensions and sizes:	[3]
; Coordinates:
; (0)	-17.5
; (1)	0.7361153
; (2)	540.1991

height = 1000 ; meters
tdp = stdatmus_z2tdp(height)  ; tdp(3) = (/ -17.5, 0.7361153, 540.1991 /)
print(tdp)

; Variable: tdp
; Type: float
; Total Size: 12 bytes
;             3 values
; Number of Dimensions: 1
; Dimensions and sizes:	[3]
; Coordinates:
; (0)	-17.5
; (1)	0.7361153
; (2)	540.1991

height = 11000 ; meters
tdp = stdatmus_z2tdp(height)  ; tdp(3) = (/ -56.5, 0.3639178, 226.3206 /)
print(tdp)

; Variable: tdp
; Type: float
; Total Size: 12 bytes
;             3 values
; Number of Dimensions: 1
; Dimensions and sizes:	[3]
; Coordinates:
; (0)	-56.5
; (1)	0.3639178
; (2)	226.3206
