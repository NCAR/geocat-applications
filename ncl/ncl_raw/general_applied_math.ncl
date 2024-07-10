; abs
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/abs.shtml
f = -5
abs_f = abs(f)  ; abs_f = 5
print(abs_f)

f_array = (/-3, -2, -1, 0, 1, 2, 3/)
abs_f = abs(f_array)  ; abs_f = (/3, 2, 1, 0, 1, 2, 3/)
print(abs_f)
