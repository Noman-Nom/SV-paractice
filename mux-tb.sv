// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module mux_tb;
  logic a1;
  logic b1;
  logic c1;
  logic sel_1;
  logic sel_2;
  logic ot_1;
  logic ot_2;
  mux mux1(.a(a1),
         .b(b1),
           .c(c1),
         .sel_1(sel_1),
           .sel_2(sel_2),
           .ot_1(ot_1),
           .ot_2(ot_2));
  
 initial begin
   $dumpfile("dump.vcd");
   $dumpvars(1);
  end
  initial begin
    a1=1'b0;
    b1=1'b1;
   sel_1=1'b0;
    c1=1'b1;
    sel_2=1'b0;
    
    #1
    a1=1'b1;
    b1=1'b0;
    sel_1=1'b1;
    sel_2=1'b0;
    c1=1'b0;
    #1 $stop();
    #1 $finish();
  end 
endmodule
