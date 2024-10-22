; area_poly_sphere
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/area_poly_sphere.shtml

; Boulder, Boston, Houston
lat = (/40.0150, 42.3601, 29.5518/)
lon = (/-105.2705, -71.0589, -95.0982/)
print(gc_clkwise(lat, lon))
; (0)	True
print(area_poly_sphere(lat, lon, 6370.997))
; (0)	1940856

; Half of the World
lat = (/90.0, 0.0, -90.0, 0.0/)
lon = (/ 0.0, -90.0, 0.0, 90.0/)
print(gc_clkwise(lat, lon))
; (0)	True
print(area_poly_sphere(lat, lon, 6370.997))
; (0)	2.55032e+08

; Single Point -> Invalid NCL
lat = (/40, 40, 40, 40/)
lon = (/-105, -105, -105, -105/)
print(gc_clkwise(lat, lon))
; (0)	True
print(area_poly_sphere(lat, lon, 6370.997))
; (0)	-1.27516e+08

; Single Degree
lat = (/40, 40, 41, 41/)
lon = (/-105, -106, -106, -105/)
print(gc_clkwise(lat, lon))
; (0)	True
print(area_poly_sphere(lat, lon, 6370.997))
;(0)	9401.705

; Full World
lat = (/90, 90, -90, -90/)
lon = (/180, -180, -180, 180/)
print(gc_clkwise(lat, lon))
; (0)	True
print(area_poly_sphere(lat, lon, 6370.997))
; (0)	5.10064e+08
