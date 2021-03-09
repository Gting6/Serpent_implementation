`timescale 1ns/100ps
`include "Encryption/Serpent.v"
`include "Encryption/table.v"
`include "Encryption/round.v"
`include "Decryption/dec_round.v"
`include "Decryption/decrypt.v"
`include "Decryption/Inv_Sbox.v"



module tb;
    reg clk;
    reg resetn;
    initial clk = 1;
    always #5 clk <= ~clk;
    
    initial begin
        $dumpfile("top.vcd");
        $dumpvars;
    end
    
    reg dir;
    reg [255:0] key;
    reg new_block;
    reg [127:0] data;

    wire ready;
    wire [127:0] output_data;

    integer i;
    
    initial begin
        resetn = 0;
        dir = 0;
        key = 128'h0;
        new_block = 1'h0;
        data = 128'h0;
        #200
        resetn = 1;
        #20
        key = 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;         
        #10
        i = 0;
        while (i < 10) begin
            data = i;
            #10
            new_block = 1;
            #10
            new_block = 0;
            #10
            @(posedge ready);
            i = i+1;
            $display("%X",output_data);
        end
        
        $finish;
    end
    
    Serpent  dut(   .i_clk( clk ),
                    .i_resetn(  resetn ),
                    .i_dir( dir ),
                    .i_key( key ),
                    .i_new_block( new_block ),
                    .i_data( data ),
                    .o_ready( ready ),
                    .o_output( output_data ) );

endmodule