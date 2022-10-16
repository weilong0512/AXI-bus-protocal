// burst bits size determined by how mamy burst operation you want 
// here use 2 bit 00-> SINGLE   01-> INCR   10-> WRAP4   11-> INCR4
module Master(
//WRITE DATA CHANNEL
	input logic WREADY,     //write ready signal from slave
	output logic WVALID,		//valid signal for write 
	output logic WLAST,		//write last signal
	output logic[3:0] WSTRB,		// strobe signal for writing in
	output logic[31:0] WDATA,		//write data
	output logic[3:0] WID,        //write data id

//WRITE RESPONSE CHANNEL
	input logic[3:0] BID, 		//response id
	input logic[3:0] BRESP,	 	//write response signal from slave
	input logic BVALID,     //write response valid signal
	output logic BREADY,     //write response ready signal

//WRITE ADDRESS CHANNEL
	input logic AWREADY,    //write address ready signal from slave
	output logic AWVALID,    // write address valid signal
	output logic[1:0] AWBURST,	//write address channel signal for burst type
	output logic[2:0] AWSIZE,     //size of each transfer in bytes(encoded)
	output logic[3:0] AWLEN,      //burst length- number of transfers in a burst
	output logic[31:0] AWADDR,     //write address signal 
	output logic[3:0] AWID,		// write address id 

//READ ADDRESS CHANNEL
	input logic ARREADY,  //read address ready signal from slave
	output logic[3:0] ARID,      //read address id
	output logic[32:0] ARADDR,		//read address signal
	output logic[3:0] ARLEN,      //length of the burst
	output logic[2:0] ARSIZE,		//number of bytes in a transfer
	output logic[1:0] ARBURST,	//burst type - fixed, incremental, wrapping
	output logic ARVALID,	//address read valid signal

//READ DATA CHANNEL
	input logic[3:0] RID,		//read data id
	input logic[31:0] RDATA,     //read data from slave
 	input logic[1:0] RRESP,		//read response signal
	input logic RLAST,		//read data last signal
	input logic RVALID,		//read data valid signal
	output logic RREADY		//read ready signal
);


endmodule