`timescale 1ns/1ns
module Segment_led_tb;
//ADD comment
reg	[3:0] heart_cnt;
wire [8:0] Segment_led_1,Segment_led_2;
Segment_led u1
(
.heart_cnt(heart_cnt),  //heart_cnt input
.Segment_led_1(Segment_led_1),  //Segment_led output, MSB~LSB = SPGFEDCBA
.Segment_led_2(Segment_led_2)  //Segment_led output, MSB~LSB = SPGFEDCBA
);

initial begin
	heart_cnt = 4'd0;
end

always #100 heart_cnt = heart_cnt + 1'b1;

endmodule
