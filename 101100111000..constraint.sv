class test;
  rand int a[$];
  rand int b[];
   int idx;
  
  constraint c3{b.size==10;}
  constraint c4{foreach(b[i])
    				if(i<b.size)
    					b[i]==i+1;}
  
  
  
  constraint c1{//foreach(b[i])
   					 a.size==(2*b[idx]);}
  
  constraint c2{foreach(a[i])
    					if(i<(a.size/2))
     						 a[i]==1;
    					else 
      						 a[i]==0;}

 function void pre_randomize();
     if (idx < b.size-1)
   					
      					idx=idx+1;
    			else
     				 idx = 0;
  endfunction 
  
endclass 
test t1;
module top;
  initial begin 
      t1=new();
    repeat(4) begin
      assert(t1.randomize());
    	foreach(t1.a[i])
     		 $display(t1.a[i]);
    
      //$display(t1.b);
    end
    end
endmodule
