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
