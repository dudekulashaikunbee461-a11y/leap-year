// ============================================================
// Palindrome Number Detector
// Verilog HDL
// ============================================================

module palindrome (
    input  wire [15:0] number,
    output reg        is_palindrome
);

    integer temp;
    integer original;
    integer reversed;
    integer digit;

    always @(*) begin

        original = number;
        temp     = number;
        reversed = 0;

        // Special case for zero
        if (number == 0) begin
            is_palindrome = 1'b1;
        end

        else begin

            // Reverse the number
            while (temp > 0) begin
                digit    = temp % 10;
                reversed = (reversed * 10) + digit;
                temp     = temp / 10;
            end

            // Compare original and reversed number
            if (original == reversed)
                is_palindrome = 1'b1;
            else
                is_palindrome = 1'b0;

        end

    end

endmodule