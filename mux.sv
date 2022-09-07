// Code your design here
module mux(input logic a,
            input logic b,
           input logic c,
           input logic sel_1,
           input logic sel_2,
           output logic ot_1,
           output logic ot_2);
  	//input logic a;
    //input logic b;
  	//input logic c;
    //input logic sel_1;
  	//input logic sel_2;
    //output logic ot_2;
  //logic ot_1;
   always@(*)begin
     ot_1=(sel_1==0)? a:b;
     ot_2=(sel_2==0)? ot_1:c;
     end
endmodule
     
