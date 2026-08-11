// ============================================================
// Testbench for Leap Year Detector
// ============================================================

`timescale 1ns/1ps

module leap_year_detector_tb;

    reg [15:0] year;
    wire is_leap_year;

    // Instantiate Leap Year Detector
    leap_year_detector uut (
        .year(year),
        .is_leap_year(is_leap_year)
    );

    // Generate waveform
    initial begin
        $dumpfile("leap_year.vcd");
        $dumpvars(0, leap_year_detector_tb);
    end

    // Test cases
    initial begin

        // 2024 - Leap Year
        year = 2024;
        #10;

        // 2025 - Not Leap Year
        year = 2025;
        #10;

        // 2000 - Leap Year
        year = 2000;
        #10;

        // 1900 - Not Leap Year
        year = 1900;
        #10;

        // 2028 - Leap Year
        year = 2028;
        #10;

        // 2100 - Not Leap Year
        year = 2100;
        #10;

        // 2400 - Leap Year
        year = 2400;
        #10;

        // 2023 - Not Leap Year
        year = 2023;
        #10;

        $finish;

    end

    // Display results
    initial begin
        $monitor(
            "Time=%0t | Year=%0d | Leap Year=%b",
            $time,
            year,
            is_leap_year
        );
    end

endmodule