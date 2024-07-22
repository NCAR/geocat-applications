; ncl -n stdatmus_z2tdp.ncl >> stdatmus_z2tdp_output.txt
do n=0,80000
	begin
	print(stdatmus_z2tdp(n))
	end
end do
