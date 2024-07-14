#include<stdio.h>
int main(){
	int n;
	printf("Nhap n:");
	scanf("%d",&n);
	int X1=0;
	int X2=1;
	int X3=1;
	for(int i=3;i<=n;i++){
		X1=X2;
		X2=X3;
		X3=X1+X2; 
	} 
	printf("So o vi tri thu n la :%d",X3); 
} 
