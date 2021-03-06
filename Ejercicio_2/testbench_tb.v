//Testbench ejercicio 2
module testbench();

  reg clk, rst, enable;
  wire Y;

  FF_T U1(clk, rst, enable, Y);

  always
    begin
      clk <= 1;
      #1 clk <= ~clk;
      #1;
  end

  initial begin
  $display("\n");
    $display("Flip Flop Tipo T - Ejercicio 2");
    $display("\n");
    $display(" Clk RST | EN |   Y    ");
    $display(" --------------------- ");
    $monitor(" %b    %b  |  %b |   %b ", clk, rst, enable, Y);

    #1 rst = 1; //Reset inicial
    #1 rst = 0; enable = 1; //Reset inicial
    #4 enable = 0;
    #2 enable = 1;
    #5 $finish;

    end

  initial begin
        $dumpfile("testbench_tb.vcd");
        $dumpvars(0, testbench);
      end
endmodule
