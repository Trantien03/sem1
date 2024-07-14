#include<stdio.h>
int main (){
	int s=4000;
	int y=0;  
	while(s<1000000){
		//yes 
		int l = s*8/100;
		s+=l;
		y++; 
	} 
	//no
	printf("sau %d nam se co so tien 1M",y);
} 
