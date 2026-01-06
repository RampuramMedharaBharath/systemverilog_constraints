class bharath;	
	rand bit [2:0]a[4][4];
	int equal=5;
	int rate=0;
	constraint c1{foreach(a[i,j]) {
				if(i==j) {
					a[i][j]==equal;}}}
	constraint c2{foreach(a[i,j]){
				if(j==0){
					a[i][j]==equal;}}}
	constraint c3{foreach(a[i,j]){
				if(i>1 && j==1){
					a[i][j]==equal;}}}
	constraint c4{foreach(a[i,j]){
				if(i==3 && j==2){
					a[i][j]==equal;}}}
	constraint c6{foreach(a[i,j]){
				if(i>j || i==j){
					a[i][j]==equal;}}}
	constraint c5{foreach(a[i,j]){
				if(j>i){
					a[i][j]==rate;}}}
endclass
bharath b1;
module  test;
	initial begin 
			b1=new();
			assert(b1.randomize());
			foreach(b1.a[i,j])
				begin 
				$write("%0d ",b1.a[i][j]);
				if(j==3)
					$display("\n");
				end
		end
endmodule
