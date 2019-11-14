#include <iostream>
#include <stdio.h>
#include <windows.h>

using namespace std;
const int MAX = 10000;

struct prArray
{
    int pStart, pEnd, pTest, pCount;
    int tArray[MAX];
};

int check_prime(int);
DWORD WINAPI primer(LPVOID lpParam);

int main()
{
    /* by having these 2 variables + the struct, error checkin is made easier*/
    int one, two, diff, temp, end1, start2;

    cout << " START:\n";
    cin >> one;
    cin >> two;
    prArray ash;
    prArray jeff;
    diff = (two - one); // get the difference between the start and end values
    temp = diff / 2;        // use this to divide the work evenly among the threads
    end1 = one + temp;      // end value for first thread
    start2 = end1 + 1;      // begin 1 number after the end of first thread

    // set the struct values
    ash.pStart = one;       // equal to the first number of the range e.g. 1 - 10000 --> 1
    ash.pEnd = one + temp;  // equal to halfway between the range e.g. 5000
    ash.pCount = ash.pStart;
    jeff.pStart = start2;   // equal to next number after halfway e.g. 5001
    jeff.pEnd = two;        // equal to last number of the range e.g. 10000
    jeff.pCount = jeff.pStart;


    //create first thread
    DWORD myThreadID1;
    HANDLE myHandle = CreateThread(
        NULL,           // security
        0,              // stack size
        primer,         // function to perform
        &ash,           // function parameter --> pass the struct
        0,              // creation flag
        &myThreadID1);  // thread id

    //create second thread
    DWORD myThreadID2;
    HANDLE myHandle2 = CreateThread(
        0,
        0,
        primer,
        &jeff,
        0,
        &myThreadID2);

    // close the threads
    CloseHandle(myHandle);
    CloseHandle(myHandle2);


    // print stuff out
    cout << endl << endl;
    cout << "   BACK TO main()\n";
    // begin with first struct (ash)
    cout << "\n   THREAD1: \n";
    cout << "Thread1 starting point: " << ash.pStart << endl;
    cout << "Thread1 ending point: " << ash.pEnd << endl;
    cout << "Test: " << ash.pTest << endl;
    int i1;
    for (i1 = 0; i1 < MAX; i1++) // print array values for first struct (ash)
    {
        if (ash.tArray[i1] == 0)
        {
            break;
        }
        else
        {
            cout << ash.tArray[i1] << " ";
        }
    }

    //begin second thread (jeff)
    cout << endl << endl;
    cout << "   THREAD2: " << endl;
    cout << "Thread2 starting point: " << jeff.pStart << endl;
    cout << "Thread2 ending point: " << jeff.pEnd << endl;
    cout << "Test: " << jeff.pTest << endl;
    int js;
    for (js = 0; js < MAX; js++) // print array values for second struct (jeff)
    {
        if (jeff.tArray[js] == 0)
        {
            break;
        }
        else
        {
            cout << jeff.tArray[js] << " ";
        }
    }
    cout << "\n first = " << i1 << endl;
    cout << " second = " << js << endl;
    cout << "Thread 1 counter = " << ash.pCount << endl;
    cout << "Thread 2 counter = " << jeff.pCount << endl;
    cout << "\n END PROGRAM" << endl;
    system("pause");
    return 0;
}
// =============    END OF main() ==============

/** ============    CHECK FOR PRIME ============= */
int check_prime(int a)
{
    int c;
    if ( a == 2 || a == 3 || a == 5 || a ==7) //check if the number is 2
    {
        return 1;
    }
    else if (a % 2 == 0 || a % 3 == 0 || a % 5 == 0 || a % 7 == 0) //check if the number is even
    {
        return 0;
    }
    else //for odd numbers, check if they are prime
    {
        for (c = 11; c <= a - 1; c+=2)
        {
            if (a%c == 0)
            return 0;
        }
        if ( c == a)
            return 1;
    }
}
/** ============    END CHECK PRIME============== */

/** ============    THREAD  ===================== */
DWORD WINAPI primer(LPVOID lpParam)
{
    prArray& dan = *(prArray*)lpParam; /*working initialization */
    dan.pTest = (dan.pEnd - dan.pStart);

    // initialize the array to "0"
    for (int i = 0; i < MAX; i++)
    {
        dan.tArray[i] = 0;
    }

    int b = 0;
    for (int lp = dan.pStart; lp <= dan.pEnd; lp++, dan.pCount++)
    {
        int result3 = check_prime(lp);
        if (result3 == 1)
        {
            dan.tArray[b] = lp;
            b++;
        }
    }
}
/** ================END THREAD =================*/
