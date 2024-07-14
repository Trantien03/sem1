#include<stdio.h>
int main(){
	int a = 5;
	int b = 7;
	int c = 9;
	scanf("%d",&a);
	scanf("%d",&b);
	scanf("%d",&c);
	if(a>b){
		printf("%d la max",a); 
	}else{
		if(b>c){
			printf("%d la max",b); 
		}else{
			if(c>a){
				printf("%d la max",c); 
			} 
		} 
	}	
		
} 
