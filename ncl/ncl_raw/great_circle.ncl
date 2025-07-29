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

; Anti-meridian
; False
is_on_arc = gc_onarc(24.86658349036834, 151.60735730237568, (/55.182644873824785, 49.05673786129486/), (/30.6703372467811, 179.59874545906715/))
print(is_on_arc)

; gc_qarea
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/gc_qarea.shtml

; Roughly the Four Corners of Colorado (4 Sides)
lat = (/41.00488, 41.00203, 37.00540, 37.00051/)
lon = (/-109.05001, -102.05348, -103.04633, -109.04720/)
print(gc_clkwise(lat, lon))
; (0)	True
print(gc_qarea(lat, lon)*6370.997^2)
; (0)	250007.7

; Boulder, Boston, Cape Canaveral, Houston
lat = (/40.0150, 42.3601, 28.3968, 29.5518/)
lon = (/-105.2705, -71.0589, -80.6057, -95.0982/)
print(gc_clkwise(lat, lon))
; (0)	True
print(gc_qarea(lat, lon)*6370.997^2)
; (0)	3154871

;; Edge Cases

; Crossing the Equator (0 degrees Latitude)
; Boulder, Boston, Montevideo, Quito
lat = (/40.0150, 42.3601, -34.5420, -0.1312/)
lon = (/-105.2705, -71.0589, -56.1103, -78.3045/)
print(gc_clkwise(lat, lon))
; (0)	True
print(gc_qarea(lat, lon)*6370.997^2)
; (0)	1.507316e+07

; Crossing the Prime Meridian (0 Degrees Longitude)
; Dublin, Norwich, London, Cardiff
lat = (/53.2100, 52.3743, 51.3026, 51.2854/)
lon = (/-6.1537, 1.1734, -0.739, -3.1045/)
print(gc_clkwise(lat, lon))
; (0)	True
print(gc_qarea(lat, lon)*6370.997^2)
; (0)	54846.59

; Half of the World
lat = (/90.0, 0.0, -90.0, 0.0/)
lon = (/0.0, -90.0, 0.0, 90.0/)
print(gc_clkwise(lat, lon))
; (0)	True
print(gc_qarea(lat, lon)*6370.997^2)
; (0)	2.55032e+08

; gc_tarea
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/gc_tarea.shtml

; 1/8th the surface of Earth (North)
lat = (/0.0, 0.0, 90.0/)
lon = (/0.0, 90.0, 0.0/)
tri_area = gc_tarea(lat, lon)
print(tri_area*6370.997^2)
; (0)	6.3758e+07

; 1/8th the surface of Earth (South)
lat = (/0.0, 0.0, -90.0/)
lon = (/0.0, 90.0, 0.0/)
tri_area = gc_tarea(lat, lon)
print(tri_area*6370.997^2)
; (0)	6.3758e+07

; Triangle Across United (Redwoods, Boston, Houston)
lat = (/41.4017, 42.3601, 29.5518/)
lon = (/-124.0417, -71.0589, -95.0982/)
tri_area = gc_tarea(lat, lon)
print(tri_area*6370.997^2)
; (0)	3782549

;; Edge Cases
; Boulder, Boston, Montevideo (Crosses 0 degrees Latitude)
lat = (/40.0150, 42.3601, -34.5420/)
lon = (/-105.2705, -71.0589, -56.1103/)
tri_area = gc_tarea(lat, lon)
print(tri_area*6370.997^2)
; (0)	1.493506e+07

; Boulder, Cairo, Houston (Crosses 0 degrees Longitude)
lat = (/40.0150, 30.240, 29.5518/)
lon = (/-105.2705, 31.149, -95.0982/)
tri_area = gc_tarea(lat, lon)
print(tri_area*6370.997^2)
; (0)	1.114434e+07

; Equator and Pole (two 90 degree spherical angles)
lat = (/0, 0, 90/)
lon = (/-105, 0, 0/)
tri_area = gc_tarea(lat, lon)
print(tri_area*6370.997^2)
; (0)	7.438434e+07

; gc_latlon
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/gc_latlon.shtml

;; Calculate great circle distances between two points

; Distance between Equator and North Pole
lat1 = 0
lon1 = 0
lat2 = 90
lon2 = 0
gc_distance_km = gc_latlon(lat1,lon1,lat2,lon2,2,4)
print(gc_distance_km)
; (0)	10007.89

; Distance between Sacramento and Albany
lat1 = 38.54623
lon1 = -121.42660
lat2 = 42.66575
lon2 = -73.79901
gc_distance_km = gc_latlon(lat1,lon1,lat2,lon2,2,4)
print(gc_distance_km)
; (0)	3993.532

; Distance between Boulder and Boston
lat1 = 40.0150
lon1 = -105.2705
lat2 = 42.3601
lon2 = -71.0589
gc_distance_km = gc_latlon(lat1,lon1,lat2,lon2,2,4)
print(gc_distance_km)
;(0)	2855.432

;; Edge Cases
; Distance to Nairobi and Cairo (Crosses 0 degrees Latitude)
lat1 = -1.1711
lon1 = 36.4902
lat2 = 30.240
lon2 = 31.149
gc_distance_km = gc_latlon(lat1,lon1,lat2,lon2,2,4)
print(gc_distance_km)
;(0)	3538.456

; Distance to Dublin and London (Crosses 0 degrees Longitude)
lat1 = 53.21
lon1 = -5.1537
lat2 = 51.3026
lon2 = 0.739
gc_distance_km = gc_latlon(lat1,lon1,lat2,lon2,2,4)
print(gc_distance_km)
;(0)	453.5349

; Distance from North to South Pole
lat1 = 90
lon1 = 0
lat2 = -90
lon2 = 0
gc_distance_km = gc_latlon(lat1,lon1,lat2,lon2,2,4)
print(gc_distance_km)
;(0)	20015.78

;; Interpolate points along great circle arc between two points

; Distance between Equator and North Pole
lat1 = 0
lon1 = 0
lat2 = 90
lon2 = 0
gc_distance = gc_latlon(lat1,lon1,lat2,lon2,10,2)
print(gc_distance)
;  units :	degrees
;  gclat :	(  0, 10, 20, 30, 40, 50, 60, 70, 80, 90 )
;  gclon :	(  0, 6.186176e-16, 1.276937e-15, 2.025549e-15, 2.943859e-15, 4.181094e-15, 6.076649e-15, 9.639125e-15, 1.989687e-14,  0 )
;  spacing :	10
; (0)	90

; Distance between Sacramento and Albany
lat1 = 38.54623
lon1 = -121.42660
lat2 = 42.66575
lon2 = -73.79901
gc_distance = gc_latlon(lat1,lon1,lat2,lon2,10,2)
print(gc_distance)
;  spacing :	3.990384
;  gclat :	( 38.54623, 39.95334, 41.15266, 42.12738, 42.86257, 43.34622, 43.56999, 43.52992, 43.22673, 42.66575 )
;  gclon :	( 238.5734, 243.3962, 248.4062, 253.585, 258.9052, 264.3314, 269.8211, 275.3275, 280.8027, 286.201 )
;  units :	degrees
; (0)	35.91346

; Distance between Boulder and Boston
lat1 = 40.0150
lon1 = -105.2705
lat2 = 42.3601
lon2 = -71.0589
gc_distance = gc_latlon(lat1,lon1,lat2,lon2,10,2)
print(gc_distance)
;  spacing :	2.853181
;  gclat :	( 40.015, 40.76997, 41.40982, 41.92961, 42.32515, 42.59314, 42.73126, 42.73831, 42.61423, 42.3601 )
;  gclon :	( 254.7295, 258.3425, 262.0321, 265.7881, 269.5983, 273.4489, 277.3247, 281.2095, 285.087, 288.9411 )
;  units :	degrees
; (0)	25.67863

;; Edge Cases
; Distance to Nairobi and Cairo (Crosses 0 degrees Latitude)
lat1 = -1.1711
lon1 = 36.4902
lat2 = 30.240
lon2 = 31.149
gc_distance = gc_latlon(lat1,lon1,lat2,lon2,10,2)
print(gc_distance)
;   spacing :	3.535667
;  gclat :	( -1.1711, 2.3232, 5.817294, 9.310863, 12.80358, 16.29507, 19.78496, 23.27277, 26.758, 30.24 )
;  gclon :	( 36.4902, 35.95082, 35.40877, 34.85993, 34.3, 33.72431, 33.12772, 32.50438, 31.84749, 31.149 )
;  units :	degrees
; (0)	31.821

; Distance to Dublin and London (Crosses 0 degrees Longitude)
lat1 = 53.21
lon1 = -5.1537
lat2 = 51.3026
lon2 = 0.739
gc_distance = gc_latlon(lat1,lon1,lat2,lon2,10,2)
print(gc_distance)
;  spacing :	0.4531774
;  gclat :	( 53.21, 53.01284, 52.81184, 52.60707, 52.39858, 52.18644, 51.97071, 51.75145, 51.52873, 51.3026 )
;  gclon :	( 354.8463, 355.5261, 356.1996, 356.8669, 357.5279, 358.1826, 358.8311, 359.4733, 0.1092852, 0.739 )
;  units :	degrees
; (0)	4.078597

; Distance from North to South Pole
lat1 = 90
lon1 = 0
lat2 = -90
lon2 = 0
gc_distance = gc_latlon(lat1,lon1,lat2,lon2,10,2)
print(gc_distance)
;  spacing :	20
;  gclat :	( 90, 70, 50, 30, 10, -10, -30, -50, -70, -90 )
;  gclon :	(  0, 3.508355e-15, 3.508355e-15, 3.508355e-15, 3.508355e-15, 3.508355e-15, 3.508355e-15, 3.508355e-15, 3.508355e-15,  0 )
;  units :	degrees
; (0)	180
