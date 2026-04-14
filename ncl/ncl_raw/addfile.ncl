; addfile
; Adapted from https://www.ncl.ucar.edu/Document/Functions/Built-in/addfile.shtml

; datafiles downloaded from: https://github.com/NCAR/geocat-datafiles

; netCDF file format family: netCDF, HDF5, and HDF-EOS5
netCDF_datafile = "1994_256_FSD.nc"
netcdf_f = addfile(netCDF_datafile, "r")
print(netcdf_f)

CDF_datafile = "941110_P.cdf"
cdf_f = addfile(CDF_datafile, "r")
print(cdf_f)

; Non-HDF5 file format family: HDF and HDF-EOS
HDF_datafile = "avhrr.hdf"
hdf_f = addfile(HDF_datafile, "r")
print(hdf_f)

HE2_datafile = "MOD04_L2.A2001066.0000.004.2003078090622.he2"
he2_f = addfile(HE2_datafile, "r")
print(he2_f)

; GRIB file format family v1 and v2
grib_datafile = "ST4.2002030112.06h.grb"
grib_f = addfile(grib_datafile, "r")
print(grib_f)

grb2_datafile = "200711210135_NCV_CEILING_A.grb2"
grb2_f = addfile(grb2_datafile, "r")
print(grb2_f)

; Shapefile file format family
; export SHAPE_RESTORE_SHX=YES
shp_datafile = "states.shp"
shp_f = addfile(shp_datafile, "r")
print(shp_f)
