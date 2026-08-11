`timescale 1ns/1ps

module parity_generator_tb;

    reg  [3:0] data;
    reg        odd;
    wire       parity;

    // Instantiate DUT
    parity_generator uut (
        .data(data),
        .odd(odd),
        .parity(parity)
    );

    initial begin

        $monitor("Time=%0t | Data=%b | Odd=%b | Parity=%b",
                 $time, data, odd, parity);

        // Even parity tests
        odd = 0;

        data = 4'b0000; #10;
        data = 4'b0001; #10;
        data = 4'b0011; #10;
        data = 4'b0111; #10;
        data = 4'b1111; #10;

        // Odd parity tests
        odd = 1;

        data = 4'b0000; #10;
        data = 4'b0001; #10;
        data = 4'b0011; #10;
        data = 4'b0111; #10;
        data = 4'b1111; #10;

        $finish;
    end

endmodule