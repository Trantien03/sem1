#include<stdio.h>
//#include<iostream>
//int main(){
    //int x=10;
    //int *p;//p la con tro.gia tri cua p la dia chi cua x
    //p=&x;
    //(*p)+=5;
    //std::cout<< p; 
//}
//int main(){
    //int a[5];
	//a[1]=15;
	//*(a+2)=20;
	//printf("a 2=%d",a[2]);
	 
//}

struct Sinhvien{
    char tensv[30];
	char email[20];
	int diemthi;	
};
int main(){
	struct Sinhvien sv1;
	scanf("%s",sv1.tensv);
	scanf("%d",&sv1.diemthi);
	
	struct Sinhvien sv2;
	scanf("%s",sv2.tensv);
	
	struct Sinhvien T2210M[26];
	
	for(int i=0;i<26;i++){
		scanf("%s",T2210M[i].tensv);
		scanf("%d",&T2210M[i].diemthi);	
	}
} 

