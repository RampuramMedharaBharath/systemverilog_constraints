//9,99,999,9999,99999
class test;
  rand int a[];
  constraint c1{a.size==9;}
  constraint c2{foreach(a[i])
    			if(i<1)
                      a[i]==10-(i+1);
               		else
                      a[i]==a[i-1]*10 + 9
   				 //a[i]==(10**(i+1)-1);}
endclass

test t1;

module top;
  initial begin 
    t1=new();
    assert(t1.randomize());
    $display(t1.a);
  end
endmodule
