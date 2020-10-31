/* Margareth Vela
Carné: 19458

Flip Flop tipo D de 1 bit */

module FF_D(input wire clock, reset, enable, d, output reg Y);
  always @ (posedge clock, posedge reset, posedge enable) begin
    if(reset) begin
      Y <= 1'b0;
    end
    else if (enable) begin
      Y <= d;
    end
  end
endmodule

//Flip Flop tipo JK de 1 bit

module FF_JK(input wire clock, reset, enable, J, K, output wire Q);
  wire w1, w2;

  FF_D G1(clock, reset, enable, QF, Q);

  and U1(w1, ~Q, J);
  and U2(w2, Q, ~K);
  or U3(QF, w1, w2);

endmodule
