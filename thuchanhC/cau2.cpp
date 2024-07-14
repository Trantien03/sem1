#include <stdio.h>

int main() {
    int n, max, count = 0;
    printf("Nhap so phan tu cua mang: ");
    scanf("%d", &n);
    
    int a[n];
    printf("Nhap cac gia tri cho mang:\n");
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
        if (i == 0 || a[i] > max) { 
            max = a[i];
            count = 1; 
        } else if (a[i] == max) { 
            count++;
        }
    }
    
    printf("So lon nhat la %d va xuat hien %d lan trong mang.\n", max, count);
    
    return 0;
}


