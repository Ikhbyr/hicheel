#include<bits/stdc++.h>
using namespace std;

void FCFS(int n,int h,int a[]){
    int i,temp=h,sum=0;
    for(i=0;i<n;i++){
		sum+=abs(a[i]-temp);
		temp=a[i];
	}
	cout<<"FCFS tolgoin shiljilt = "<< sum<<'\n'<<endl;
}
void CSCAN(int size,int head,int arr[],int disk_size)
{
    int count = 0;
    int distance, movement;
    vector<int> left, right;
    vector<int> sequence;

    left.push_back(0);
    right.push_back(disk_size - 1);


    for (int i = 0; i < size; i++) {
        if (arr[i] < head)
            left.push_back(arr[i]);
        if (arr[i] > head)
            right.push_back(arr[i]);
    }
    std::sort(left.begin(), left.end());
    std::sort(right.begin(), right.end());

    for (int i = 0; i < right.size(); i++) {
        movement = right[i];

        sequence.push_back(movement);
        distance = abs(movement - head);
        count += distance;
        head = movement;
    }
    head = 0;
    for (int i = 0; i < left.size(); i++) {
        movement = left[i];
        sequence.push_back(movement);
        distance = abs(movement - head);
        count += distance;
        head = movement;
    }

    cout << "C_SCAN tolgoin shiljilt = "<< count <<"\n"<<endl;
}
void SCAN(int size,int head,int arr[],int disk_size,string direction)
{
    int count = 0;
    int distance, movement;
    vector<int> left, right;
    vector<int> sequence;
    if (direction == "left")
        left.push_back(0);
    else if (direction == "right")
        right.push_back(disk_size - 1);

    for (int i = 0; i < size; i++) {
        if (arr[i] < head)
            left.push_back(arr[i]);
        if (arr[i] > head)
            right.push_back(arr[i]);
    }
    std::sort(left.begin(), left.end());
    std::sort(right.begin(), right.end());
    int run = 2;
    while (run--) {
        if (direction == "left") {
            for (int i = left.size() - 1; i >= 0; i--) {
                movement = left[i];
                sequence.push_back(movement);
                distance = abs(movement - head);
                count += distance;
                head = movement;
            }
            direction = "right";
        }
        else if (direction == "right") {
            for (int i = 0; i < right.size(); i++) {
                movement = right[i];
                sequence.push_back(movement);
                distance = abs(movement - head);
                count += distance;
                head = movement;
            }
            direction = "left";
        }
    }
    cout << "SCAN tolgoin shiljilt = "<< count <<"\n"<<endl;
}
int main(){
	int i,j,k,n,m,sum=0,x,y,h;
	m=5000;
	n=1000;
	int a[n];
	for(i=0;i<n;i++)
    a[i]=rand()%5001;
    while(1){
        cout<<"Tolgoin bairshil oruul\n";
        cin>>h;
        FCFS(n,h,a);
        CSCAN(n,h,a,m);
        cout<<"scan\n";
        SCAN(n,h,a,m,"right");
    }

	return 0;
}
