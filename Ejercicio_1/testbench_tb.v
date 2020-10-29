//Testbench ejercicio 1
module testbench();

  reg clk, rst, enable, d;
  reg [1:0] d2;
  reg [3:0] d4;
  wire Y;
  wire [1:0] Y2;
  wire [3:0] Y4;

  FF_D1 U1(clk, rst, enable, d, Y);
  FF_D2 U2(clk, rst, enable, d2,Y2);
  FF_D4 U3(clk, rst, enable, d4, Y4);

  always
    begin
      clk <= 1;
      #1 clk <= ~clk;
      #1;
  end

  initial begin
  $display("\n");
    $display("Flip Flop de 1 bit - Ejercicio 1");
    $display("\n");
    $display(" Clk RST | EN    D |   Y    ");
    $display(" --------------------------- ");
    $monitor(" %b    %b  | %b     %b |   %b ", clk, rst, enable, d, Y);

    #1 rst = 1; //Reset inicial
    #1 rst = 0; //Reset inicial
    #2 enable = 1; d = 1;
    #2 d = 0;
    #2 d = 1;
    #2 enable = 0; d = 0;
    #2 d = 1;
    #2 enable = 1;
    #2 d = 0;
    end

  initial begin
  #18
  $display("\n");
    $display("Flip Flop de 2 bits - Ejercicio 1");
    $display("\n");
    $display(" Clk RST | EN     D |    Y    ");
    $display(" ---------------------------- ");
    $monitor(" %b    %b  | %b     %b |   %b ", clk, rst, enable, d2, Y2);

    #1 rst = 1; //Reset inicial
    #1 rst = 0; enable = 0; //Reset inicial
    #2 enable = 1; d2[1] = 0; d2[0] = 1;
    #2 d2[1] = 1; d2[0] = 0;
    #2 d2[1] = 0; d2[0] = 0;
    #2 enable = 0; d2[1] = 0; d2[0] = 1;
    #2 d2[1] = 1; d2[0] = 0;
    #2 enable = 1;
    #2 d2[1] = 1; d2[0] = 1;
    end

    initial begin
    #36
    $display("\n");
      $display("Flip Flop de 4 bits - Ejercicio 1");
      $display("\n");
      $display(" Clk RST | EN     D   |    Y    ");
      $display(" ------------------------------- ");
      $monitor(" %b    %b  | %b     %b |   %b ", clk, rst, enable, d4, Y4);

      #1 rst = 1; //Reset inicial
      #1 rst = 0; enable = 0;//Reset inicial
      #2 enable = 1; d4[3] = 0; d4[2] = 0; d4[1] = 0; d4[0] = 1;
      #2 d4[3] = 0; d4[2] = 0; d4[1] = 0; d4[0] = 1;
      #2 d4[3] = 0; d4[2] = 0; d4[1] = 1; d4[0] = 1;
      #2 enable = 0; d4[3] = 1; d4[2] = 0; d4[1] = 1; d4[0] = 1;
      #2 d4[3] = 0; d4[2] = 1; d4[1] = 1; d4[0] = 1;
      #2 enable = 1;
      #2 d4[3] = 1; d4[2] = 1; d4[1] = 1; d4[0] = 1;
      #5 $finish;

      end

    initial begin
          $dumpfile("testbench_tb.vcd");
          $dumpvars(0, testbench);
        end
endmodule
