#include <iostream>
#include <stdlib.h>
using namespace std;
//globaluud
int head; //tolgoi bairlal hadgalna
int position[1000]; // uussen bairlaluud hadgalna
int ochison[1000]; // ochison bolgonoo hadgalna

//hamgiin ehnees n avhuuulaad taaraldsan tsiklruugee yvna
void FCFS()
{
    int shiljilt = 0;
    for(int i = 0; i < 1000; i++)
    {
        shiljilt += abs(head - position[i]);
        head = position[i];
    }
    cout <<"FCFS : " << shiljilt << endl;;
    return;
}

//tolgoi tsiklees 0 luu yvna daraan hamgiin suuliihees butsaad naash yvna(left left)
void CSCAN()
{
    int index, shiljilt = 0, temp;
    for(int i = 0; i < 1000; i++)
    {
        for(int j = 0; j < 1000; j++)
        {
            if(position[i] < position[j])
            {
                temp = position[i];
                position[i] = position[j];
                position[j] = temp;
            }
        }
    }
    for(int i = 0; i < 1000; i++)
        if(head < position[i])
        {
            index = i;
            break;
        }
    temp = position[index - 1];
    for(int i = index - 1; i >= 0; i--)
    {
        shiljilt += temp - position[i];
        temp = position[i];
    }
    shiljilt += position[0];
    temp = 5000;
    for(int i = 999; i >= index; i--)
    {
        shiljilt += temp - position[i];
        temp = position[i];
    }
    cout <<"C-Scan : " << shiljilt << endl;
}

//tolgoinoos 0 luu yvna 0 eesei butsaad suul hurtel yvna (left right)
void SCAN()
{
    int index, shiljilt = 0, temp;
    for(int i = 0; i < 1000;i++)
    {
        for(int j = 0; j < 1000; j++)
        {
            if(position[i] < position[j])
            {
                temp = position[i];
                position[i] = position[j];
                position[j] = temp;
            }
        }
    }
    for(int i = 0; i < 1000; i++)
        if(head < position[i])
        {
            index = i;
            break;
        }
    temp = position[index - 1];
    for(int i = index - 1; i >= 0; i--)
    {
        shiljilt += temp-position[i];
        temp = position[i];
    }
    shiljilt += position[0];
    for(int i = index, temp = 0; i < 1000; i++)
    {
        shiljilt += abs(temp - position[i]);
        temp = position[i];
    }
    cout <<"Scan : " << shiljilt << endl;
}

int main()
{

    cout<< "Anhnii bairlalaa oruul: ";
    cin>> head;
    int temp = head;
    //cout<< "randomoor uussen tsikluud "<< endl;
    for(int i = 0; i < 1000; i++)
    {
        position[i] = rand() % 5000;
        //cout << i << " : "<< position[i] << endl;
    }
    head = temp;
    for(int i = 0; i < 1000; i++)
        ochison[i] = 0;
    FCFS();
    head = temp;
    for(int i = 0; i < 1000; i++)
        ochison[i] = 0;
    CSCAN();
    SCAN();
    return 0;
}
