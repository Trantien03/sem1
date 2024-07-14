#include<stdio.h>
int timMax(int arr[],int n){
	//n la kich thuoc 
	int h =arr[0];
	for(int i=0; i<n,i++){
		if(ar[i]>h){
			h=ar[i]; 
		} 
	} retur h; 
} 

int main(){
	int ary[10];
	//ary[0]
	//ary[9]
	
    for(int i=0;i<10;i++){ //duyet mang 
    	scanf("%d",&ary[i]); 
	}
	int high = timMax(?y,10);
	for(int i=0;i<10;i++){
	if(ary[i]>high){
	  high = ary[i]; 	
	    }
	} 
	printf("So lon nhat la: %d",high);
	//tim so gan lon nhat
	//tim tai day sau khi da co high
	//ary[i]<high && high 2<ary[i]
	 
    int high2 = high;//phai chon 1 gia tri cua mang ma ko phai so lon nhat
	for(int i=0;i<10;i++){
		if(ary[i]<high){
			high2=ary[i]; 	
		} 
	}  
	for(int i=0;i<10;i++){ 
    if(ary[i]<high && high2<ary[i]){
    	high2 = ary[i]; 
	}
}
	printf("\nSo gan lon nhat la: %d",high2);
}
