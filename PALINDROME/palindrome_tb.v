

// ============================================================
// Testbench for Palindrome Number Detector
// ============================================================

`timescale 1ns/1ps

module palindrome_tb;

    reg  [15:0] number;
    wire        is_palindrome;

    // Instantiate the Palindrome module
    palindrome uut (
        .number(number),
        .is_palindrome(is_palindrome)
    );

    // Generate waveform
    initial begin
        $dumpfile("palindrome.vcd");
        $dumpvars(0, palindrome_tb);
    end

    // Test cases
    initial begin

        // 0 -> Palindrome
        number = 0;
        #10;

        // 1 -> Palindrome
        number = 1;
        #10;

        // 11 -> Palindrome
        number = 11;
        #10;

        // 12 -> Not Palindrome
        number = 12;
        #10;

        // 121 -> Palindrome
        number = 121;
        #10;

        // 123 -> Not Palindrome
        number = 123;
        #10;

        // 222 -> Palindrome
        number = 222;
        #10;

        // 12321 -> Palindrome
        number = 12321;
        #10;

        // 12345 -> Not Palindrome
        number = 12345;
        #10;

        // 1221 -> Palindrome
        number = 1221;
        #10;

        // 1234 -> Not Palindrome
        number = 1234;
        #10;

        // 65535 -> Not Palindrome
        number = 65535;
        #10;

        $finish;

    end

    // Display simulation results
    initial begin
        $monitor(
            "Time=%0t | Number=%0d | Palindrome=%b",
            $time,
            number,
            is_palindrome
        );
    end

endmodule