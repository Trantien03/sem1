#include<stdio.h>

int tinhTong(int a,int b){
	int c = a+b;
	return c; 
} 
//viet ham tim so lon hon trong 2 so nguyen 
int max(int a,int b){ 
	if(a>b){
		return a; 
	} 
	return b; 
} 
int main(){
	int x;
	int y;
	printf("Nhap x:");
	scanf("%d",&x);
	printf("Nhap y:");
	scanf("%d",&y); 
	int so_can_tim= max(x,y);
	printf("so_can_tim la = %d",so_can_tim); 
} 
