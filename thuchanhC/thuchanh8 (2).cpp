#include<stdio.h>
#include<math.h>
int main(){
	int a;
	int b;
	int c;
	scanf("%d",&a);
	scanf("%d",&b);
	scanf("%d",&c);
	if(a>0 && b>0 && c>0){
		if(a + b > c || a + c > 0 || b + c > 0){
			float cv = a + b + c;
			printf("cv = %lf \n",cv);
			float dt = sqrt((cv/2)*((cv/2)-a)*((cv/2)-b)*((cv/2)-c));
			printf("dt = %lf",dt); 
		} 
	} 
} 
