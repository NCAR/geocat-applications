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

; ceil
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/ceil.shtml
f = 6.4
ceil_f = ceil(f)  ; ceil_f = 7
print(ceil_f)

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

; exp
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/exp.shtml
f = -0.2
exp_f = exp(f)  ; exp_f = 0.8187308
print(exp_f)

; fabs
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/fabs.shtml
iarray = (/-3.5, -2.2, -1.0, 0.0, 1.2, 2.4, 3.9/)
jarray = fabs(iarray)  ; jarray = (/3.5, 2.2, 1, 0, 1.2, 2.4, 3.9/)
print(jarray)

; floor
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/floor.shtml
f = -6.4
floor_f  = floor(f)  ; floor_f  = 6
print(floor_f )

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

; max
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/max.shtml
f = (/2.1, 3.2, 4.3, 5.4, 6.5, 7.6, 8.7, 9.8/)
max_f = max(f)  ; max_f = 9.8
print(max_f)

; min
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/min.shtml
f = (/2.1, 3.2, 4.3, 5.4, 6.5, 7.6, 8.7, 9.8/)
min_f = min(f)  ; min_f = 2.1
print(min_f)

; mod
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/mod.shtml
mod_f = mod(17, 3)  ; mod_f = 2
print(mod_f)

; product
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/product.shtml
x = (/ (/1,-99/), (/3,4/), (/-99,6/) /)
x@_FillValue = -99
xproduct = product(x)  ; xproduct = 72
print(xproduct)

; qsort
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/qsort.shtml
x = (/4.3, 0.9, 5.2, 7.7, 2.3, -4.7, -9.1/)
qsort(x)
print(x)  ; x = (/-9.1, -4.7, 0.9, 2.3, 4.3, 5.2, 7.7/)

; round
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/round.shtml
f = 5.7
round_f = round(f, 0)
print(round_f)  ; round_f = 6

; sign_matlab
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Contributed/sign_matlab.shtml
i = (/-3.5, 0.0, 1.2/)
matlab_i = sqrt(matlab_i)
print(matlab_i)  ; matlab_i = (/-1, 0, 1/)

; sqrt
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/sqrt.shtml
f = 12.5
sqrt_f = sqrt(f)
print(sqrt_f)  ; sqrt = 3.535534

; sqsort
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/sqsort.shtml
s = (/"Auf Wiedersehen", "Goodbye", "Hasta Luego", "Ciao"/)
sqsort(s)
print(s)  ; s= (/"Auf Wiedersehen", "Ciao", "Goodbye", "Hasta Luego"/)

; sum
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/sum.shtml
x = (/ (/1,-99/), (/3,4/), (/-99,6/) /)
x@_FillValue = -99
xsum  = sum(x)  ; xsum  = 14
print(xsum)
