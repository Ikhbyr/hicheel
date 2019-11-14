#include<iostream>
using namespace std;
#include <iostream>
using namespace std;
int main() {
	// anhnaasaa ugugdsun ugugduluud
	int x=5,y=4;
	int Allocation[x][y] = {{0,0,1,2},{1,0,0,0},{1,3,5,4},{0,6,3,2},{0,0,1,4}},notwork;
	int Max[x][y] = {{5,5,1,2},{1,7,5,0},{2,3,5,6},{0,6,5,2},{0,6,5,6}};
	int Available[y] = {1,5,2,0};
	// hereglegdeh huvisagchid
	int i, j, flag=0, check=0, uildel=0;
	// hariug hadgalah husnegtuud
	int Need[x][y];  // max aas allocation matrix iin ylgavar
	bool shalgah[x]={false};
	int Work[y]={0}; //ajild heregleh bolomjtoi processiig hadgalna
	// need matrix hevleh heseg
	cout<<"Need matrix"<<endl;
	cout<<endl;
	for (i=0; i<x; i++){
		for (j=0; j<y; j++){
			Need[i][j] = Max[i][j] - Allocation[i][j];
			cout<<Need[i][j]<<' ';
		}
		cout<<endl;
	}
	cout<<endl;
	while(1){
        uildel = 0;
        flag = 1;
        for (i = 0; i < y; i++)
            Work[i] = Available[i];
        for (i=0; i<x; i++){
            if (shalgah[i] == 1){
                for (j = 0; j<y; j++)
                    Work[j] += Allocation[i][j];
            }
        }
        for (i=0; i<5; i++){
            if (shalgah[i] == 1)
                continue;
            check = 0;
            for (j=0; j<4; j++){
                if (Need[i][j] <= Work[j])
                    check++;
                    else
                    notwork=i;
                //cout<<"need ni: "<<Need[i][j]<<"Work ni: "<<Work[j]<<endl;
            }
            if (check == 4){
                cout<<i<<"-r process ajillaa"<<endl;
                shalgah[i] = 1; // ajillaj duussang iltgene
                flag = 0;
            }
        }

        for (i=0; i<x; i++){  //ajillaj duussan processiig toolno
            if (shalgah[i] == 1)
                uildel++;
        }
        if (uildel == x){  //ajillaj duussan processiin too 5 tohioldold deadlock uuseegui gj uzne
            cout<<"deadlock uussengui"<<endl;
            break;
        }
        else if (flag == 1){ // deadlock uusen ued flag 1 heveer baih bolno
            cout<<notwork<<"-r process ajillsangui"<<endl;
            cout<<"deadlocked uuslee"<<endl;
            break;
        }
	}
	return 0;
}
