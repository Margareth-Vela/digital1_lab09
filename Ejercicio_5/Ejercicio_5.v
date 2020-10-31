/* Margareth Vela
Carné: 19458

Memoria ROM*/

module ROM (input wire [6:0]Address, output reg [12:0]Y);
  always @(Address) begin
    casex(Address)
      7'bxxxxxx0: Y = 13'b1000000001000 ;//caso 1
      7'b00001x1: Y = 13'b0100000001000 ;//caso 2
      7'b00000x1: Y = 13'b1000000001000 ;//caso 3
      7'b00011x1: Y = 13'b1000000001000 ;//caso 4
      7'b00010x1: Y = 13'b0100000001000 ;//caso 5
      7'b0010xx1: Y = 13'b0001001000010 ;//caso 6
      7'b0011xx1: Y = 13'b1001001100000 ;//caso 7
      7'b0100xx1: Y = 13'b0011010000010 ;//caso 8
      7'b0101xx1: Y = 13'b0011010000100 ;//Caso 9
      7'b0110xx1: Y = 13'b1011010100000 ;//caso 10
      7'b0111xx1: Y = 13'b1000000111000 ;//caso 11
      7'b1000x11: Y = 13'b0100000001000 ;//caso 12
      7'b1000x01: Y = 13'b1000000001000 ;//caso 13
      7'b1001x11: Y = 13'b1000000001000 ;//caso 14
      7'b1001x01: Y = 13'b0100000001000 ;//caso 15
      7'b1010xx1: Y = 13'b0011011000010 ;//caso 16
      7'b1011xx1: Y = 13'b1011011100000 ;//caso 17
      7'b1100xx1: Y = 13'b0100000001000 ;//caso 18
      7'b1101xx1: Y = 13'b0000000001001 ;//caso 19
      7'b1110xx1: Y = 13'b0011100000010 ;//caso 20
      7'b1111xx1: Y = 13'b1011100100000 ;//caso 21
      default:    Y = 13'b0 ; // caso por default
    endcase
  end

endmodule
