
set_property PACKAGE_PIN W5 [get_ports C]							
	set_property IOSTANDARD LVCMOS33 [get_ports C]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports C]



set_property PACKAGE_PIN V13 [get_ports {LED[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]
set_property PACKAGE_PIN V3 [get_ports {LED[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]
set_property PACKAGE_PIN W3 [get_ports {LED[5]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]
set_property PACKAGE_PIN U3 [get_ports {LED[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]
set_property PACKAGE_PIN P3 [get_ports {LED[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
set_property PACKAGE_PIN N3 [get_ports {LED[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property PACKAGE_PIN P1 [get_ports {LED[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property PACKAGE_PIN L1 [get_ports {LED[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
	
	

set_property PACKAGE_PIN W7 [get_ports {cathode[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[0]}]
set_property PACKAGE_PIN W6 [get_ports {cathode[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[1]}]
set_property PACKAGE_PIN U8 [get_ports {cathode[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[2]}]
set_property PACKAGE_PIN V8 [get_ports {cathode[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[3]}]
set_property PACKAGE_PIN U5 [get_ports {cathode[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[4]}]
set_property PACKAGE_PIN V5 [get_ports {cathode[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[5]}]
set_property PACKAGE_PIN U7 [get_ports {cathode[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[6]}]



set_property PACKAGE_PIN U2 [get_ports {A[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]
set_property PACKAGE_PIN U4 [get_ports {A[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]
set_property PACKAGE_PIN V4 [get_ports {A[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]
set_property PACKAGE_PIN W4 [get_ports {A[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

##Buttons
set_property PACKAGE_PIN U18 [get_ports reset]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset]
#USB-RS232 Interface
set_property PACKAGE_PIN B18 [get_ports rx_in]						
	set_property IOSTANDARD LVCMOS33 [get_ports rx_in]
#set_property PACKAGE_PIN A18 [get_ports RsTx]						
#	set_property IOSTANDARD LVCMOS33 [get_ports RsTx]
