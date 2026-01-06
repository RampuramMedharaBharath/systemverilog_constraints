class test;
  rand int a[];
  constraint c1{a.size inside {[10:20]};} //defining size of array
  constraint c2{foreach(a[i])
    				if(i%2==0)
     					 a[i]%2!=0;
        	       else
                   a[i]%2==0;}   //defining the even values in odd locations and odd values in even locations
  
   constraint c4{foreach(a[i])
           a[i] inside {[0:80]};} //need values from this {0:80}
  
  constraint c3{foreach(a[i])
   					 if(i<(a.size-1))
                       a[i]>a[i+1];}// ascending(>) and descending order(<)
endclass
test y;
module tp;
  initial begin 
    y=new();
    assert(y.randomize());
    $display(y.a);
  end
endmodule
