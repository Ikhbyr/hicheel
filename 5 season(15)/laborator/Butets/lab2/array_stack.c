#include <stdio.h>
#include <stdlib.h>

int main()
{
int t,n=10,i;
int num=-1,stack[n],x;
	while (1) {
		printf("1: push, 2: pop, 3: print, 4: empty, 5: top, 6: exit\n");
		scanf("%d", &t);
		switch (t) {
		case 1:
			/*
			  Энд push үйлдэл хийнэ
			 */
			 if(num>=n){
                printf("Stack duursen\n");
			 }else{
			     printf("Push hiih utga oruul\n");
			     scanf("%d",&x);
			     num++;
                 stack[num]=x;
			 }

			break;
		case 2:
			/*
			  Энд pop үйлдэл хийнэ
			 */
			 if(num<=0){
                printf("Stack Hooson\n");
			 }else{
			     printf("%d element hasagdsan\n",stack[num]);
			     num--;
			 }
			break;
		case 3:
			/*
			  Энд print үйлдэл хийнэ
			 */
			 for(i=0; i<=num;i++){
                printf("%d ni %d\n",i,stack[i]);
			 }
			break;
		case 4:
			/*
			  Энд empty үйлдэл хийнэ
			 */
			 if(num<0){
                printf("Stack Hooson\n");
			 }else{
                printf("Stack Hooson bish\n");
			 }
			break;
		case 5:
			/*
			  Энд top үйлдэл хийнэ
			 */
			 printf("Stack top is %d\n", stack[num]);
			break;
		default:
			exit(0);
		}
	}

	return 0;
}
