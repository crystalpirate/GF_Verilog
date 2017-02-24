module A_Array (
        input b_i,
        input signed [255:0] a,
        output reg signed [255:0] sum
);


always @ * 
if (b_i == 1'b1) begin
sum = a;
end
else begin
sum = 256'b0;
end

endmodule

