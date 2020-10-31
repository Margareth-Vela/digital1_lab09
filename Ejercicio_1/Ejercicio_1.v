/* Margareth Vela
Carné: 19458

Ejercicio 1 - Flip Flop tipo D de 1 bit */

module FF_D1(input wire clock, reset, enable, d, output reg Y);
  always @ (posedge clock, posedge reset, posedge enable) begin
    if(reset) begin
      Y <= 1'b0;
    end
    else if (enable) begin
      Y <= d;
    end
  end
endmodule

//Flip Flop tipo D de 2 bits
module FF_D2(input wire clock, reset, enable, input wire [1:0] d, output wire [1:0] Y);
  FF_D1 G1(clock, reset, enable, d[1], Y[1]);
  FF_D1 G2(clock, reset, enable, d[0], Y[0]);
endmodule

//Flip Flop tipo D de 2 bits
module FF_D4(input wire clock, reset, enable, input wire [3:0] d, output wire [3:0] Y);
  FF_D1 G1(clock, reset, enable, d[3], Y[3]);
  FF_D1 G2(clock, reset, enable, d[2], Y[2]);
  FF_D1 G3(clock, reset, enable, d[1], Y[1]);
  FF_D1 G4(clock, reset, enable, d[0], Y[0]);
endmodule
