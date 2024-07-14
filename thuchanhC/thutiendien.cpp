#include <stdio.h>

#include <conio.h>

int main() {

    int csm, csc, tien, tieuthu;

 

    printf("Nhap chi so moi = ");

    scanf("%d", &csm);

 

    printf("Nhap chi so cu = ");

    scanf("%d", &csc);

 

    tieuthu=csm-csc;

    if(tieuthu<=100)

             tien=tieuthu*1000;

    else

            {

                if(tieuthu<=150)

                tien=100*1000 + (tieuthu-100)*1200;

                          else

                        {

                        if(tieuthu<=200)

                            tien=100*1000 + 50*1200 + (tieuthu-150)*2000;

                            else

                                    {

                                    if(tieuthu>=201)

                                        tien=100*1000 + 50*1200 + 50*2000 + (tieuthu-200)*2500;

            }           }           }

    printf("\n CSM = %d", csm);

    printf("\n CSC = %d", csc);

    printf("\n Tien = %d", tien);

    getch();

}
