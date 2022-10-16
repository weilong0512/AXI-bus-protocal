`define DATAWIDTH 32
`define SIZE 3

[`SIZE-1:0]
modport Master(
//WRITE DATA CHANNEL
	input logic WREADY,     //write ready signal from slave
	output logic WVALID,		//valid signal for write 
	output logic WLAST,		//write last signal
	output logic[(`DATAWIDTH/8)-1:0] WSTRB,		// strobe signal for writing in
	output logic[`DATAWIDTH:0] WDATA,		//write data
	output logic[(`DATAWIDTH/8)-1:0] WID,        //write data id

//WRITE RESPONSE CHANNEL
	input logic[(`DATAWIDTH/8)-1:0] BID, 		//response id
	input logic[`SIZE-2:0] BRESP,	 	//write response signal from slave
	input logic BVALID,     //write response valid signal
	output logic BREADY,     //write response ready signal

//WRITE ADDRESS CHANNEL
	input logic AWREADY,    //write address ready signal from slave
	output logic AWVALID,    // write address valid signal
	output logic[`SIZE-2:0] AWBURST,	//write address channel signal for burst type
	output logic[`SIZE-1:0] AWSIZE,     //size of each transfer in bytes(encoded)
	output logic[(`DATAWIDTH/8)-1:0] AWLEN,      //burst length- number of transfers in a burst
	output logic[`DATAWIDTH-1:0] AWADDR,     //write address signal 
	output logic[(`DATAWIDTH/8)-1:0] AWID,		// write address id 

//READ ADDRESS CHANNEL
	input logic ARREADY,  //read address ready signal from slave
	output logic[(`DATAWIDTH/8)-1:0] ARID,      //read address id
	output logic[`DATAWIDTH-1:0] ARADDR,		//read address signal
	output logic[(`DATAWIDTH/8)-1:0] ARLEN,      //length of the burst
	output logic[`SIZE-1:0] ARSIZE,		//number of bytes in a transfer
	output logic[`SIZE-2:0] ARBURST,	//burst type - fixed, incremental, wrapping
	output logic ARVALID,	//address read valid signal

//READ DATA CHANNEL
	input logic[(`DATAWIDTH/8)-1:0] RID,		//read data id
	input logic[`DATAWIDTH-1:0] RDATA,     //read data from slave
 	input logic[`SIZE-2:0] RRESP,		//read response signal
	input logic RLAST,		//read data last signal
	input logic RVALID,		//read data valid signal
	output logic RREADY		//read ready signal
);