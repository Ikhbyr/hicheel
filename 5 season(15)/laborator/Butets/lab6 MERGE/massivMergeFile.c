#include <stdio.h>
main(){
    FILE *in,*in1;
    int n[20],m[20],merge[50],i=0,j,nsize=0,msize=0,size=0;
	if ((in= fopen( "list1.txt", "r+" )) == NULL ) {
		printf( "File neej chadsangui\n" );
		return 0;
	}
	if ((in1= fopen( "list2.txt", "r+" )) == NULL ) {
		printf( "File neej chadsangui\n" );
		return 0;
	}
	printf("list1 values: ");
	while(fscanf(in, "%d", &m[i]) != EOF){
        printf("%d, ",m[i]);
        i++;
        msize++;
    }
    i=0;
    printf("\nlist2 values: ");
	while(fscanf(in1, "%d", &n[i]) != EOF){
	    printf("%d, ",n[i]);
        i++;
        nsize++;
    }
    for(i=0,j=0;i<nsize;i++){
        //printf("%d",n[i]);
            if(n[i]<=m[j]){
                merge[size]=n[i];
            }else{
                merge[size]=m[j];
                j++;
                i--;
            }
            size++;
    }
    if(j!=msize){
        for(i=j;i<msize;i++){
            merge[size]=m[i];
            size++;
        }
    }
    printf("\n Merge ni: ");
    for(i=0;i<size;i++){
        printf("%d ",merge[i]);
    }
	fclose(in);
	fclose(in1);
}
