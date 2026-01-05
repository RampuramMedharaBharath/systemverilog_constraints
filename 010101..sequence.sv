//0101010101
class test;
  rand int a[];
  constraint c1{a.size==10;}
  constraint c2{foreach(a[i])
    if(i%2<1)
                  a[i]==1;
                else 
                  a[i]==0;}
endclass 
test t1;
module top;
  initial begin 
    t1=new();
    assert(t1.randomize());
    $display(t1.a);
  end
endmodule
