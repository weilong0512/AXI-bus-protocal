`define DATAWIDTH 32
`define SIZE 3

modport Slave(

//WRITE DATA CHANNEL
	output	WREADY,     //write ready signal from slave
	input	WVALID,		//valid signal for write 
	input	WLAST,		//write last signal
	input	WSTRB,		// strobe signal for writing in
	input	WDATA,		//write data
	input	WID,        //write data id

//WRITE RESPONSE CHANNEL
	output	BID, 		//response id
	output	BRESP,	 	//write response signal from slave
	output	BVALID,     //write response valid signal
	input	BREADY,     //write response ready signal

//WRITE ADDRESS CHANNEL
	output	AWREADY,    //write address ready signal from slave
	input	AWVALID,    // write address valid signal
	input	AWBURST,	//write address channel signal for burst type
	input	AWSIZE,     //size of each transfer in bytes(encoded)
	input	AWLEN,      //burst length- number of transfers in a burst
	input	AWADDR,     //write address signal 
	input	AWID,		// write address id 

//READ ADDRESS CHANNEL
	output	ARREADY,  //read address ready signal from slave
	input	ARID,      //read address id
	input	ARADDR,		//read address signal
	input	ARLEN,      //length of the burst
	input	ARSIZE,		//number of bytes in a transfer
	input	ARBURST,	//burst type - fixed, incremental, wrapping
	input	ARVALID,	//address read valid signal

//READ DATA CHANNEL
	output	RID,		//read data id
	output	RDATA,     //read data from slave
 	output	RRESP,		//read response signal
	output	RLAST,		//read data last signal
	output	RVALID,		//read data valid signal
	input	RREADY		//read ready signal
);