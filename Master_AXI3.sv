//////////////////////////////////////////////////////////
// Module for the Axi3 interconnect protocol behaviour with various response signals from Master's channels-
// 1.Write address channel 
// 2.Write Data Channel 
// 3. Write Response channel
// 4. Read Address channel
// 5.Read Data Channel
// Implementing the Axi3 protocol while interfacing with Master
// Master<->AXI fsm's 
///////////////////////////////////////////////////////////
// Master的AXI protocol FSM behavier
///////////////////////////////////////////////////////////
// we need to design the master and slave behavior at the same time
///////////////////////////////////////////////////////////
`include "master.sv"
`include "slave.sv"
`include "define.svh"

module Master_AXI3 ( // 銜接from CPU的資料 
    input logic clk, rst
    input logic [DATAWIDTH-1:0]  AWaddr, 			/////////////////////////////////
    input logic [(DATAWIDTH/8)-1:0]   AWlen,		//
    input logic	[DATAWIDTH-1:0]	WData,				//
    input logic	[(DATAWIDTH/8)-1:0]	AWid,			//
    input logic	[(DATAWIDTH/8)-1:0]   WStrb,		//
    input logic	[(DATAWIDTH/8)-1:0]	ARid,			///////CAMEL CASE LETTERS-  indicating the Axi3 interconnecting signals to from Master 
    input logic	[(DATAWIDTH/8)-1:0]	ARlen,			//	
    input logic	[SIZE-1:0]	AWsize,					//
    input logic	[SIZE-2:0]	AWburst,				//
    input logic	[DATAWIDTH-1:0]	ARaddr,				//
    input logic	[SIZE-1:0]	ARsize,					//
    input logic	[SIZE-2:0]	ARburst,				///////////////////////////////////
    //output logic	[16383:0] [7:0] read_memory      //creating a 2D memory array at the axi-> master side for storing the read data recieved by the master from slave .
);
    
Master M_behavior();

///////////////////////////////Channels ////////////////////////////
//
//Master -Write address channel states
enum logic [1:0] { 
    MWRITE_IDLE=2'b00,
    MWRITE_START=2'b01,
    MWRITE_WAIT=2'b10,
    MWRITE_VALID=2'b11 } MAWRITEState, MAWRITENext_state; 




endmodule