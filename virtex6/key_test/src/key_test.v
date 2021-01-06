//======================================================
// Module name: key_test.v
//======================================================
`timescale 1ns / 1ps
module key_test  (
							clk,
							key_in,
							led_out
						);

//========================================================
// PORT declarations
//========================================================						
input        clk; 
input  [1:0] key_in;
output [1:0] led_out;

wire rst_n=1'b1;

reg [19:0] count;
reg [1:0] key_scan;

always @(posedge clk or negedge rst_n)
begin
   if(!rst_n)
      count <= 20'd0;
   else
      begin
         if(count ==20'd999_999)
            begin
               count <= 20'b0;
               key_scan <= key_in;
            end
         else
            count <= count + 20'b1;
     end
end

reg [1:0] key_scan_r;
always @(posedge clk)
    key_scan_r <= key_scan;       
    
wire [1:0] flag_key = key_scan_r[1:0] & (~key_scan[1:0]);

reg [1:0] temp_led;
always @ (posedge clk or negedge rst_n)
begin
    if (!rst_n)
         temp_led <= 2'b11;
    else
         begin            
             if ( flag_key[0] ) temp_led[0] <= ~temp_led[0];
             if ( flag_key[1] ) temp_led[1] <= ~temp_led[1];
            
         end
end
 
 assign led_out[0] = temp_led[0];
 assign led_out[1] = temp_led[1];
 
            
endmodule
