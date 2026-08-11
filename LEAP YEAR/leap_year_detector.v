// ============================================================
// Leap Year Detector
// Verilog HDL
//
// Rule:
// A year is a leap year if:
// 1. It is divisible by 400, OR
// 2. It is divisible by 4 but NOT divisible by 100.
// ============================================================

module leap_year_detector (
    input  wire [15:0] year,
    output reg        is_leap_year
);

    always @(*) begin

        if ((year % 400 == 0) ||
            ((year % 4 == 0) && (year % 100 != 0)))

            is_leap_year = 1'b1;

        else
            is_leap_year = 1'b0;

    end

endmodule