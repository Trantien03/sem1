#include<stdio.h>
int main (){
	int n;
	float s = 0;
	int i = 1; 
	printf("nhap n:"); 
	scanf("%d",&n);
	while(i <= n){
		s=s+1.0/i;
		i++;
	}
	printf("tong cua s la: %f",s); 
} 
