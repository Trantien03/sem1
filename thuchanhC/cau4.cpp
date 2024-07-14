#include <stdio.h>
#include <stdbool.h>

bool ktDoiXung(int a[], int n) {
    for (int i = 0; i < n / 2; i++) {
        if (a[i] != a[n - i - 1]) {
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
    
    if (ktDoiXung(a, n)) {
        printf("Day la mang doi xung.\n");
    } else {
        printf("Day khong phai la mang doi xung.\n");
    }
    
    return 0;
}

