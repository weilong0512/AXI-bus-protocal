`define DATAWIDTH 32
`define SIZE 3

modport Slave(
//WRITE DATA CHANNEL
	output logic WREADY,     //write ready signal from slave
	input logic WVALID,		//valid signal for write 
	input logic WLAST,		//write last signal
	input logic WSTRB,		// strobe signal for writing in
	input logic WDATA,		//write data
	input logic WID,        //write data id

//WRITE RESPONSE CHANNEL
	output logic BID, 		//response id
	output logic BRESP,	 	//write response signal from slave
	output logic BVALID,     //write response valid signal
	input logic BREADY,     //write response ready signal

//WRITE ADDRESS CHANNEL
	output logic AWREADY,    //write address ready signal from slave
	input logic AWVALID,    // write address valid signal
	input logic AWBURST,	//write address channel signal for burst type
	input logic AWSIZE,     //size of each transfer in bytes(encoded)
	input logic AWLEN,      //burst length- number of transfers in a burst
	input logic AWADDR,     //write address signal 
	input logic AWID,		// write address id 

//READ ADDRESS CHANNEL
	output logic ARREADY,  //read address ready signal from slave
	input logic ARID,      //read address id
	input logic ARADDR,		//read address signal
	input logic ARLEN,      //length of the burst
	input logic ARSIZE,		//number of bytes in a transfer
	input logic ARBURST,	//burst type - fixed, incremental, wrapping
	input logic ARVALID,	//address read valid signal

//READ DATA CHANNEL
	output logic RID,		//read data id
	output logic RDATA,     //read data from slave
 	output logic RRESP,		//read response signal
	output logic RLAST,		//read data last signal
	output logic RVALID,		//read data valid signal
	input logic RREADY		//read ready signal
);