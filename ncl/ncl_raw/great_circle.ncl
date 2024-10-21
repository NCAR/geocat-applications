; area_poly_sphere
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/area_poly_sphere.shtml

lat = (/40.0150, 42.3601, 29.5518/)
lon = (/-105.2705, -71.0589, -95.0982/)
print(area_poly_sphere(lat, lon, 6370.997))
(0)	1940856

lat = (/90.0, 0.0, -90.0, 0.0/)
lon = (/ 0.0, -90.0, 0.0, 90.0/)
print(area_poly_sphere(lat, lon, 6370.997))
(0)	2.55032e+08
