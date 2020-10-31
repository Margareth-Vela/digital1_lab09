//Testbench ejercicio 4
module testbench();

  reg enable;
  reg [3:0] A;
  wire[3:0] Y;

  Buffer_4 B1(enable, A, Y);

  initial begin
    $display("\n");
      $display("Buffer Triestado - Ejercicio 4");
      $display("\n");
      $display(" Enable    A    |    Y    ");
      $display(" -----------------------");
      $monitor(" %b        %b  |   %b ", enable, A, Y);
      #1 enable = 1; A[0]=0; A[1]=1; A[2]=0; A[3]=0;
      #1 enable = 1; A[0]=0; A[1]=1; A[2]=1; A[3]=1;
      #1 enable = 1; A[0]=1; A[1]=1; A[2]=1; A[3]=1;
      #1 enable = 0; A[0]=1; A[1]=1; A[2]=0; A[3]=1;
      #1 enable = 1; A[0]=1; A[1]=0; A[2]=0; A[3]=0;
      #1 enable = 0; A[0]=0; A[1]=1; A[2]=0; A[3]=1;
      #1 enable = 1; A[0]=1; A[1]=0; A[2]=1; A[3]=0;
      #1 enable = 1; A[0]=1; A[1]=0; A[2]=1; A[3]=1;
      #1 $finish;

  end

  initial begin
    $dumpfile("testbench_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
