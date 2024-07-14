#include<stdio.h>
#include<string.h>
void chuyeninhoa(char s[]){
	for(int i=0;i<=strlen(s);i++){
		if(s[i]>=97 && s[i]<=122){
			s[i]-=32;
	    }
	}
} 


int main(){
	char s[50];
	printf("Nhap chuoi bat ki:");
	scanf("%s",s); 
	//for(int i=0;i<=strlen(s);i++){
	//	if(s[i]>=97 && s[i]<=122){
	//		s[i]-=32; 
	  //  }
	//}
	chuyeninhoa(s); 
		printf("Chuoi chu hoa la: %s",s); 
} 
	
