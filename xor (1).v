module cmos_xor(xor_out,A,B);
	output xor_out;
	input A,B;
	supply0 GND;
	supply1 PWR;
	wire D1,D2,E1,N_A,N_B;
	
	pmos (N_A,PWR,A);
	nmos (N_A,GND,A);
	
	pmos (N_B,PWR,B);
	nmos (N_B,GND,B);
	
	//upper
	nmos(D1,PWR,N_A);
	nmos(D1,PWR,B);	
	
	nmos(xor_out,D1,A);
	nmos(xor_out,D1,N_B);

	//lower
	
	
	
endmodule

//pmos (out,in,ctrl);
//nmos (out,in,ctrl);

//inverter
//pmos (inv_out,PWR,inv_in);
//nmos (inv_out,GND,inv_in);