class test;
 rand bit [7:0]a[4][4];
	//int i,j;
	int sum=10;
	constraint c1{foreach(a[i,j]){
			 if(i==j)
				a[i][j]==sum;
			if(i+j==3)
				a[i][j]==sum;}}
	//constraint c2{foreach(a[i,j])
			
endclass

module test;
test t1;
initial begin
t1=new();
t1.randomize();
foreach(t1.a[i,j]) 
begin
$write("%0d ",t1.a[i][j]);
	if(j==3)
	$display("\n"); end
foreach(t1.a[i,j]) 

begin
$display("%0d",t1.a[i][j]);
end
end
endmodule
