#include <stdio.h>
main(){
    FILE *in1,*in2,*merge;
    int c,d;
    bool f1=true, f2=true;
    merge = fopen("merge.txt","w");
	if ((in1= fopen( "list1.txt", "r" )) == NULL ) {
		printf( "File neej chadsangui\n" );
		return 0;
	}
	if ((in2= fopen( "list2.txt", "r" )) == NULL ) {
		printf( "File neej chadsangui\n" );
		return 0;
	}
    printf("list1 values: ");
	while(fscanf(in1, "%d", &c) != EOF){
        printf("%d, ",c);
    }
    printf("\nlist2 values: ");
	while(fscanf(in2, "%d", &c) != EOF){
        printf("%d, ",c);
    }
    rewind(in2);
    rewind(in1);
    printf("\nmerge values: ");
    if(f1) fscanf(in1, "%d", &c);
    if(f2) fscanf(in2, "%d", &d);
    while(feof(in1)==0 && feof(in2)==0){
        if(c<d){
            printf("%d, ",c);
            fprintf(merge,"%d ",c);
            f1=true;
            f2=false;
        }else{
            printf("%d, ",d);
            fprintf(merge,"%d ",d);
            f2=true;
            f1=false;
        }
        if(f1) fscanf(in1, "%d", &c);
        if(f2) fscanf(in2, "%d", &d);
    }
    if(feof(in1)!=0){
        printf("%d, ",d);
        fprintf(merge,"%d ",d);
    }
    if(feof(in2)!=0){
        printf("%d, ",c);
        fprintf(merge,"%d ",c);
    }
    while(fscanf(in1, "%d", &c) != EOF){
        printf("%d, ",c);
        fprintf(merge,"%d ",c);
    }
    while(fscanf(in2, "%d", &d) != EOF){
        printf("%d, ",d);
        fprintf(merge,"%d ",d);
    }
	fclose(in1);
	fclose(in2);
}

