module parity_generator (
    input  [3:0] data,
    input        odd,
    output       parity
);

    // Even parity when odd = 0
    // Odd parity when odd = 1
    assign parity = odd ? 
                    ~(data[3] ^ data[2] ^ data[1] ^ data[0]) :
                     (data[3] ^ data[2] ^ data[1] ^ data[0]);

endmodule