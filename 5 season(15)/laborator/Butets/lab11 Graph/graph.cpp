#include<iostream>
using namespace std;
main(){
    int size=10;
    int values[size][size],a,o1[100],i,j,max=0,k1,k2,num=0;
    for(i=0;i<size;i++){
        for(j=0;j<size;j++){
            values[i][j]=0;
        }
    }
    while(1){
        cout<<"1: Irmeg nemeh, 2: Irmeg hasah, 3: Oroi nemeh, 4:Oroi hasah, 5: hewleh, 0: exit\n";
        cin>>a;
        switch(a){
        case 1:
            cout<<"Holbogdoh ontsguudiig oruul\n";
            cin>>k1>>k2;
            if(max<k1 || max<k2){
                if(k1<k2){
                    max=k2;
                }else{
                    max=k1;
                }
            }
            for(i=0; i<num; i++){
                if(o1[i]==k1){
                    for(j=0; j<num; j++){
                        if(o1[j]==k2){
                            values[i][j]=1;
                            values[j][i]=1;
                            cout<<"Amjilttai holbogdloo\n";
                            break;
                        }
                    }
                }
            }
            if(j==max && i==max){
                cout<<"Ali neg oroi buruu baina\n";
            }
            break;
        case 2:
            cout<<"Oroinuudiig oruul\n";
            cin>>k1>>k2;
            if(max<k1 || max<k2){
                if(k1<k2){
                    max=k2;
                }else{
                    max=k1;
                }
            }
            for(i=0; i<num; i++){
                if(o1[i]==k1){
                    for(j=0; j<num; j++){
                        if(o1[j]==k2){
                            values[i][j]=0;
                            values[j][i]=0;
                            cout<<"Ontsoguud holboltgui bolloo\n";
                            break;
                        }
                    }
                }
            }
            if(j==max && i==max){
                cout<<"Ali neg oroi buruu baina\n";
            }
            break;
        case 3:
            cout<<"Oroig oruul\n";
            cin>>k1;
            o1[num]=k1;
            if(max<k1){
                max=k1;
            }
            num++;
            break;
        case 4:
            cout<<"Oroig oruul\n";
            cin>>k1;
            for(i=0;i<num;i++){
                if(o1[i]==k1){
                    for(i;i<num-1;i++){
                        o1[i]=o1[i+1];
                    }
                    cout<<"Amjilttai ustlaa\n";
                    num--;
                    break;
                }
            }
            if(i==num){
                cout<<"Oroig olj chadsangui\n";
            }
            break;
        case 5:
            cout<<"Massiv-aar\n ";
            for(j=0;j<num;j++){
                cout<<" "<<o1[j];
            }
            cout<<endl;
            for(i=0;i<num;i++){
                cout<<o1[i]<<" ";
                for(j=0;j<num;j++){
                    cout<<values[i][j]<<" ";
                }
                cout<<"\n";
            }
            break;
        default:
            return 0;
        }
    }
}
