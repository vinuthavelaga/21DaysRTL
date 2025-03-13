module day1_tb ();

  logic [7:0] a_i, b_i;
  logic       sel_i;
  logic [7:0] y_o;
  
  day1 DAY1 (.a_i(a_i), .b_i(b_i), .sel_i(sel_i), .y_o(y_o));// Write your Testbench here...

  initial begin
    
    sel_i = 0;
    a_i = 8'h00; b_i = 8'h11; #10;
    a_i = 8'h12; b_i = 8'h34; #10;
    a_i = 8'h56; b_i = 8'h78; #10;

    sel_i = 1; #10;
    a_i = 8'h00; b_i = 8'h11; #10;
    a_i = 8'h12; b_i = 8'h34; #10;
    a_i = 8'h56; b_i = 8'h78; #10;
    
    $finish;
    
  end
  
endmodule
