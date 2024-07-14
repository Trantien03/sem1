#include <stdio.h>
#include <stdbool.h>

bool ktSNT(int n) { // ktSNT : kiem tra so nguyen to 
    if (n < 2) {
        return false;
    }
    for (int i = 2; i <= n / 2; i++) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}

int main() {
    int n;
    printf("Nhap so phan tu cua mang: ");
    scanf("%d", &n);
    
    int a[n];
    printf("Nhap cac gia tri cho mang:\n");
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }
    
    printf("Cac so nguyen to trong mang la:\n");
    for (int i = 0; i < n; i++) {
        if (ktSNT(a[i])) {
            printf("%d ", a[i]);
        }
    }
    printf("\n");
    
    return 0;
}

