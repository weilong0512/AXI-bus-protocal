`include "define.svh"

modport Slave(
//WRITE DATA CHANNEL
	output logic WREADY,     //write ready signal from slave
	input logic WVALID,		//valid signal for write 
	input logic WLAST,		//write last signal
	input logic[(`DATAWIDTH/8)-1:0] WSTRB,		// strobe signal for writing in
	input logic[`DATAWIDTH:0] WDATA,		//write data
	input logic[(`DATAWIDTH/8)-1:0] WID,        //write data id

//WRITE RESPONSE CHANNEL
	output logic[(`DATAWIDTH/8)-1:0] BID, 		//response id
	output logic[`SIZE-2:0] BRESP,	 	//write response signal from slave
	output logic BVALID,     //write response valid signal
	input logic BREADY,     //write response ready signal

//WRITE ADDRESS CHANNEL
	output logic AWREADY,    //write address ready signal from slave
	input logic AWVALID,    // write address valid signal
	input logic[`SIZE-2:0] AWBURST,	//write address channel signal for burst type
	input logic[`SIZE-1:0] AWSIZE,     //size of each transfer in bytes(encoded)
	input logic[(`DATAWIDTH/8)-1:0] AWLEN,      //burst length- number of transfers in a burst
	input logic[`DATAWIDTH-1:0] AWADDR,     //write address signal 
	input logic[(`DATAWIDTH/8)-1:0] AWID,		// write address id 

//READ ADDRESS CHANNEL
	output logic ARREADY,  //read address ready signal from slave
	input logic[(`DATAWIDTH/8)-1:0] ARID,      //read address id
	input logic[`DATAWIDTH-1:0] ARADDR,		//read address signal
	input logic[(`DATAWIDTH/8)-1:0] ARLEN,      //length of the burst
	input logic[`SIZE-1:0] ARSIZE,		//number of bytes in a transfer
	input logic[`SIZE-2:0] ARBURST,	//burst type - fixed, incremental, wrapping
	input logic ARVALID,	//address read valid signal

//READ DATA CHANNEL
	output logic[(`DATAWIDTH/8)-1:0] RID,		//read data id
	output logic[`DATAWIDTH-1:0] RDATA,     //read data from slave
 	output logic[`SIZE-2:0] RRESP,		//read response signal
	output logic RLAST,		//read data last signal
	output logic RVALID,		//read data valid signal
	input logic RREADY		//read ready signal
);