#include <stdio.h>
#define MAX 10
struct x {
	int a;
	int b;
} x[MAX];


int main()
{
	for(int i=0;i<MAX;i++) {
		x[i].a = (i+1)*100;
		x[i].b = (MAX-i)*100;
	}
	printf("hi");
	int zzz;
	scanf("%d", &zzz);
	return 0;
}
