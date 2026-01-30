module alu_2bit (
    input  [1:0] A,
    input  [1:0] B,
    input  [1:0] sel,
    output reg [1:0] result,
    output reg carry
);

always @(*) begin
    carry = 0;   // default value

    case (sel)
        2'b00: begin
            {carry, result} = A + B;   // ADD
        end

        2'b01: begin
            {carry, result} = A - B;   // SUB
        end

        2'b10: begin
            result = A & B;            // AND
        end

        2'b11: begin
            result = A ^ B;            // XOR
        end

        default: begin
            result = 2'b00;
            carry  = 0;
        end
    endcase
end

endmodule
