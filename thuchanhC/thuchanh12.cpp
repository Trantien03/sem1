#include<stdio.h>
int main (){
	int n;
	int s = 0,i = 1; 
	printf("nhap n:"); 
	scanf("%d",&n);
	while(i <= n){
		s=s+i;
		i++;
	}
	printf("tong cua s la: %d",s); 
} 
