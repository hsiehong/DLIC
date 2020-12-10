module conv(
    clk,
    rst,
    finish,
    start,
    M0_R_req,
    M0_addr,
    M0_R_data,
    M0_W_req,
    M0_W_data,
    M1_R_req,
    M1_addr,
    M1_R_data,
    M1_W_req,
    M1_W_data
);

// define I/O
input clk, rst, start;
input signed [31:0] M0_R_data;
output [31:0] M0_addr, M1_addr;
output reg [3:0] M0_W_req;
output [3:0] M1_W_req;
output reg finish;
output M1_R_req ;
//output reg M0_R_req;
output M0_R_req;
output reg [31:0] M1_W_data, M0_W_data, M1_R_data;

// define variable
reg [3:0] currState;
reg [3:0] nextState;
reg [3:0] Counter;              // use in every stage
reg [9:0] readIdx;
reg [9:0] index;                // 0-25,28-53,...
reg [9:0] wrtIdx;
reg [4:0] borderCnt;
reg [2:0] filterCnt;
reg [31:0] mulRounded [0:8];
reg [31:0] result;
reg  r_wb_enb, r_input_enb, mul_enb, add_enb, wrt_enb;
reg signed [31:0] inputWB [0:9];    // 10
reg signed [31:0] inputData [0:8];  // 9 data
reg signed [63:0] mulTemp [0:8];    // 9 res

// assign part
assign M0_addr      = {20'b0, readIdx, 2'b00};
assign M1_addr      = {20'b0, wrtIdx, 2'b0};
assign M0_R_req     = 1;
assign M1_W_req     = 4'b1111;
assign M1_R_req     = 1;

// define FSM state
parameter ST_IDLE       = 3'b000,
          ST_READWB     = 3'b001,
          ST_READINPUT  = 3'b010,
          ST_MUL        = 3'b011,
          ST_ADD        = 3'b100,
          ST_WRITE      = 3'b101,
          ST_FINISH     = 3'b110;

// next-state logic
always @(*) begin
    case(currState)
        ST_IDLE : begin
            if (start)
                nextState = ST_READWB;
            else
                nextState = ST_IDLE;
        end
        ST_READWB : begin
            if (r_wb_enb)
                nextState = ST_READWB;
            else
                nextState = ST_READINPUT;
        end
        ST_READINPUT : begin
            if (r_input_enb) 
                nextState = ST_READINPUT;
            else
                nextState = ST_MUL;
        end
        ST_MUL : begin
            if (mul_enb)
                nextState = ST_MUL;
            else
                nextState = ST_ADD;
        end
        ST_ADD : begin
            if (add_enb)
                nextState = ST_ADD;
            else
                nextState = ST_WRITE;
        end
        ST_WRITE : begin
            if (finish)
                nextState = ST_FINISH;
            else
                nextState  = ST_READINPUT;
        end
        ST_FINISH : begin
            nextState = ST_FINISH;
        end
        default :
            nextState = ST_IDLE;
    endcase
end

// state register      
always @(posedge clk) begin
    if (!rst)
        nextState <= ST_IDLE;
    else
        currState <= nextState;
end

// output logic
always @(*) begin
    case (currState)
        ST_IDLE : begin
            r_wb_enb        = 0;
            r_input_enb     = 0;
            mul_enb         = 0;
            add_enb         = 0;
            wrt_enb         = 0;
            readIdx         = 0;
            Counter         = -1;
            borderCnt       = 0;
            filterCnt       = 0;
            index           = 0;
            result          = 0;
            wrtIdx          = 0;
            finish          = 0;
        end
        ST_READWB : begin
            if (Counter == 11) begin
                r_wb_enb    = 0;
                Counter     = 0;
                readIdx     = 0;
            end
            else
                r_wb_enb    = 1;
        end
        ST_READINPUT : begin
            if (Counter == 10) begin
                r_input_enb = 0;
                Counter     = 0;
                result      = 0;
            end
            else 
                r_input_enb = 1;
        end
        ST_MUL : begin
            if (Counter == 9) begin
                mul_enb = 0;
                Counter = 0;
            end
            else
                mul_enb = 1;
        end
        ST_ADD : begin
            if (Counter == 1) begin
                add_enb = 0;
                Counter = 0;
            end
            else 
                add_enb = 1;
        end
        ST_WRITE : begin
           finish = (wrtIdx == 675) ? 1 : 0;
        end
        ST_FINISH : begin
            finish = 1;
        end
        default : begin
            Counter         = 0;
            r_wb_enb        = 0;
            r_input_enb     = 0;
            mul_enb         = 0;
            add_enb         = 0;
            wrt_enb         = 0;
            readIdx         = 0;
            //M0_R_req        = 0;
        end
    endcase
end

// read from memory
always @(posedge clk) begin
    case ({r_wb_enb, r_input_enb})
        2'b10 : begin
            inputWB[Counter - 1]    <= M0_R_data;
            Counter             <= Counter + 1;
        end
        2'b01 : begin
            inputData[Counter - 1]  <= M0_R_data;
            Counter             <= Counter + 1;
        end
        default : ;
    endcase
end

// rounding
always @(*) begin
    mulRounded[0] = mulTemp[0][47:16] + mulTemp[0][15];
    mulRounded[1] = mulTemp[1][47:16] + mulTemp[1][15];
    mulRounded[2] = mulTemp[2][47:16] + mulTemp[2][15];
    mulRounded[3] = mulTemp[3][47:16] + mulTemp[3][15];
    mulRounded[4] = mulTemp[4][47:16] + mulTemp[4][15];
    mulRounded[5] = mulTemp[5][47:16] + mulTemp[5][15];
    mulRounded[6] = mulTemp[6][47:16] + mulTemp[6][15];
    mulRounded[7] = mulTemp[7][47:16] + mulTemp[7][15];
    mulRounded[8] = mulTemp[8][47:16] + mulTemp[8][15];
end

// reset counter
always @(r_input_enb, r_wb_enb, mul_enb, add_enb, wrt_enb) begin
    Counter     = 0;
end

always @(posedge r_input_enb)begin
    readIdx     <= index;
end

//wrt data
always @(*) begin
    M1_W_data   = result;
end

always @(posedge clk) begin
    case (currState)
        ST_IDLE : begin 
            Counter             <= -1;
            readIdx             <= 784;
        end
        ST_READWB : begin
            readIdx     <= readIdx + 1;
        end
        ST_READINPUT : begin
            // readIdx     <= (filterCnt == 2) ? (readIdx + 26) : (readIdx + 1);
            readIdx     <= (Counter == 2 | Counter ==5) ? (readIdx + 26) : (readIdx + 1);
            filterCnt   <= (filterCnt == 2) ? 0 : (filterCnt + 1);
        end
        ST_MUL : begin
            mulTemp[Counter]    <= inputData[Counter] * inputWB[Counter];
            Counter             <= Counter + 1;
        end
        ST_ADD : begin
            //result          <= result + mulRounded[Counter];
            result          <= (((mulRounded[0] + mulRounded[1]) + mulRounded[2])
                                + ((mulRounded[3] + mulRounded[4]) + mulRounded[5]) 
                                + ((mulRounded[6] + mulRounded[7]) + mulRounded[8])) + inputWB[9];
            Counter         <= Counter + 1;
        end
        ST_WRITE : begin
            // reset signal for each iteration
            borderCnt   <= (borderCnt == 25) ? 0 : (borderCnt + 1);
            index       <= (borderCnt == 25) ? (index + 3) : (index + 1);
            wrtIdx      <= wrtIdx + 1;
            readIdx     <= (borderCnt == 25) ? (index + 3) : (index + 1);
            filterCnt   <= 0;
            Counter     <= Counter + 1;
        end
        ST_FINISH : begin
            
        end
    endcase
end
endmodule
