#include<stdio.h>

 

int main(){
	showMenu(); 
	int x;
	int y; 
	scanf("%d",&x);
	scanf("%d",&y);
	if(ktSoDuong(x)){
		printf("%d la so duong\n",x);	
	}else{
		printf("%d khong la so duong\n",x);
	} 
	if(ktSoNguyenTo(y)){
	 	printf("%d la so nguyen to\n",y); 
	 }else{
	 	printf("%d khong la so nguyen to\n",y); 
	 } return 0; 
	  
 
} 
