; area_poly_sphere
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/area_poly_sphere.shtml

; Boulder, Boston, Houston (3 Sides)
lat0 = (/40.0150, 42.3601, 29.5518/)
lon0 = (/-105.2705, -71.0589, -95.0982/)
print(gc_clkwise(lat0, lon0))
; (0)	True
print(area_poly_sphere(lat0, lon0, 6370.997))
; (0)	1940856

; Roughly the Four Corners of Colorado (4 Sides)
lat1 = (/41.00488, 41.00203, 37.00540, 37.00051/)
lon1 = (/-109.05001, -102.05348, -103.04633, -109.04720/)
print(gc_clkwise(lat1, lon1))
; (0)	True
print(area_poly_sphere(lat1, lon1, 6370.997))
; (0)	250007.6

; Caltech, Alberta, Greenwich, Paris, Madrid (5 Sides)
lat2 = (/34.1377, 53.9333, 51.4934, 48.8575, 40.4167/)
lon2 = (/-118.1253, -116.5765, 0.0098, 2.3514, -3.7033/)
print(gc_clkwise(lat2, lon2))
; (0)	True
print(area_poly_sphere(lat2, lon2, 6370.997))
; (0)	1.16348e+07

;; Edge Cases:

; Crossing the Equator (0 degrees Latitude)
; Libreville, Moanda, San Tome and Principe
lat3 = (/0.4078, -5.9230, 0.1864/)
lon3 = (/9.4403, 12.3636, 6.6131/)
print(gc_clkwise(lat3, lon3))
; (0)	True
print(area_poly_sphere(lat3, lon3, 6370.997))
; (0)	114894.8

; Crossing the Prime Meridian (0 Degrees Longitude)
; Dublin, Amsterdam, Fishguard
lat4 = (/53.3498, 52.3676, 51.9939/)
lon4 = (/-6.2603, 4.9041, -4.9760/)
print(gc_clkwise(lat4, lon4))
; (0)	True
print(area_poly_sphere(lat4, lon4, 6370.997))
; (0)	54450.39

; Half of the World
lat5 = (/90.0, 0.0, -90.0, 0.0/)
lon5 = (/0.0, -90.0, 0.0, 90.0/)
print(gc_clkwise(lat5, lon5))
; (0)	True
print(area_poly_sphere(lat5, lon5, 6370.997))
; (0)	2.55032e+08

; Single Point -> Invalid NCL
lat6 = (/40, 40, 40, 40/)
lon6 = (/-105, -105, -105, -105/)
print(gc_clkwise(lat6, lon6))
; (0)	True
print(area_poly_sphere(lat6, lon6, 6370.997))
; (0)	-1.27516e+08

; Single Degree
lat7 = (/40, 40, 41, 41/)
lon7 = (/-105, -106, -106, -105/)
print(gc_clkwise(lat7, lon7))
; (0)	True
print(area_poly_sphere(lat7, lon7, 6370.997))
;(0)	9401.705

; css2c
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/css2c.shtml

; ncl -n css2c.ncl >> css2c_output.txt

print("Latitude (Degree), Longitude (Degree), Cartesian X, Cartesian Y, Cartesian Z")
do lat=-90,90
	do lon=-180,180
		begin
		cart = css2c(lat, lon)
		print (lat + "," + lon + "," + cart(0,0) + "," + cart(1,0) + "," + cart(2,0))
		end
	end do
end do

; csc2s
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/csc2s.shtml

; ncl -n csc2s.ncl >> csc2s_output.txt

print("Input Latitude (Degree), Input Longitude (Degree), Cartesian X, Cartesian Y, Cartesian Z, Output Latitude (Degree), Output Longitude (Degree)")
do lat=-90,90
	do lon=-180,180
		begin
		cart = css2c(lat, lon)
		; determine a list of xyz coordinates based on lat/lon
		x = cart(0,0)
		y = cart(1,0)
		z = cart(2,0)
		sph = csc2s(x, y, z)
		print(lat + "," + lon + "," + x + "," + y + "," + z + "," + sph(0,0) + "," + sph(1,0))
		end
	end do
end do

; gc_onarc
; ncl -n gc_onarc.ncl >> gc_onarc_output.txt

; Arc above/below latitude with point in Boulder with same longitude
; True
is_on_arc = gc_onarc(40.0150, -105.2705, (/50.0150, 30.0150/), (/-105.2705, -105.2705/))
print(is_on_arc)

; Arc from Denver to Boston, point with Boulder
; False
is_on_arc = gc_onarc(40.0150, -105.2705, (/39.73915, 42.35843/), (/-104.9847, -71.05977/))
print(is_on_arc)

; All three points in the same position
; True
is_on_arc = gc_onarc(40.0150, -105.2705, (/40.0150, 40.0150/), (/-105.2705, -105.2705/))
print(is_on_arc)
