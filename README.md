# Serpent_implementation #

### Introduction ###
Serpent is a symmetric key block cipher that was a finalist in the Advanced Encryption Standard (AES) contest, where it was ranked second to Rijndael. Serpent was designed by Ross Anderson, Eli Biham, and Lars Knudsen. [from wiki]

This project implement the algorithm by Verilog, using XILINX PYNQ and Serpent online to check the result.

### Implementation ###
iverilog -o out ./tb.v
vvp out
gtkwave top.vcd  
