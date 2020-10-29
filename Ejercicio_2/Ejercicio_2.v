/* Margareth Vela
Carné: 19458

Flip Flop tipo D de 1 bit */

module FF_D1(input wire clock, reset, enable, d, output reg Y);
  always @ (posedge clock, posedge reset) begin
    if(reset) begin
      Y <= 1'b0;
    end
    else if (enable == 1) begin
      Y <= d;
    end
    else if (enable == 0) begin
      Y <= Y;
    end
  end
endmodule

//Ejercicio 2 - Flip Flop tipo T de 1 bit

module FF_T(input wire clock, reset, enable, output wire Y);
  wire d;
  assign d = ~Y;
  FF_D1 G1(clock, reset, enable, d, Y);
  
endmodule
