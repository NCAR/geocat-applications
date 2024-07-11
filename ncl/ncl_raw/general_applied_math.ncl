; abs
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/abs.shtml
f = -5
abs_f = abs(f)  ; abs_f = 5
print(abs_f)

f_array = (/-3, -2, -1, 0, 1, 2, 3/)
abs_f = abs(f_array)
print(abs_f)
; (0)	3
; (1)	2
; (2)	1
; (3)	0
; (4)	1
; (5)	2
; (6)	3


; avg
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/avg.shtml
f = (/ (/1,2,3/), (/4,5,6/)/)
avg_f = avg(f)  ; avg_f = 3.5
print(avg_f)

; cumsum
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/cumsum.shtml
f = (/1,2,3,4,5/)
cumsum_f = cumsum(f, 0) ; cumsum_f = (/1  3  6  10  15/)
print(cumsum_f)
; (0)	1
; (1)	3
; (2)	6
; (3)	10
; (4)	15

; decimalPlaces
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/decimalPlaces.shtml
f = 12.345678
decimalPlaces_f = decimalPlaces(f, 2, True)  ; decimalPlaces_f = 12.35

; get_d2r
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/get_d2r.shtml
d2r = get_d2r("double")  ; d2r = 0.0174532925199433

; get_r2d
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/get_r2d.shtml
r2d = get_r2d("double")  ; r2d = 57.29577951308232

; get_pi
; Adapted from https://www.ncl.ucar.edu/D
pi = get_pi("double")  ; pi = 3.141592653589793

; log
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/log.shtml
f = 3.6
log_f = log(f)  ; log_f = 1.280934
print(log_f

; log10
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/log10.shtml
f = 3.4
log10_f = log10(f)  ; log10_f = 0.5314789
print(log10_f)

; mod
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/mod.shtml
mod_f = mod(17, 3)  ; mod_f = 2
print(mod_f)
