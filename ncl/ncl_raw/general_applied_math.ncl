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
