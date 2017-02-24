
module shift_reg (
		input clk,
		input start,
		input signed [255:0] D,
		output reg signed [255:0] Q
);

initial begin
Q = 256'b0;
end

integer f;
initial begin
  f = $fopen("mux_sum_output.txt","w");
end

always @ (posedge clk) 
begin
if (start) begin
	Q <= D;
	  $fwrite(f,"%h", Q);
  	  $fwrite(f,"\n");
end
end
endmodule