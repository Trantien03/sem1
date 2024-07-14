#include <stdio.h>

int main() {
    int n, sum = 0, count = 0;
    printf("Nhap so phan tu cua mang: ");
    scanf("%d", &n);
    
    int a[n];
    printf("Nhap cac gia tri cho mang:\n");
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
        if (a[i] % 2 == 0) { 
            sum += a[i];
            count++;
        }
    }
    
    if (count == 0) { 
        printf("Khong co so chan trong mang.\n");
    } else {
        float TB = (float) sum / count;
        printf("Trung binh cong cac so chan trong mang la: %.2f\n", TB);
    }
    
    return 0;
}

