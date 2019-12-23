#include <Windows.h>
#include <stdio.h>

int main(void){
///shared lock
    HANDLE hFileHandle;
    BOOL bSuccess,EXCLUSIVE = false, SHARED = true;
    char *szFilename = "testing.txt";
    char *szFile = "test.txt";
    char szBuffer[245];

    //file uusgeh
    //with both reading and writing authority
    //and reading and writing sharing
    hFileHandle = CreateFile(szFilename, GENERIC_READ,
        FILE_SHARE_READ, 0, CREATE_ALWAYS, 0, 0);
    if(hFileHandle == INVALID_HANDLE_VALUE){
        printf("Shine file uusgej chadsangui\n");
        exit(EXIT_FAILURE);
    }
    FILE *fp = fopen("testing.txt", "rb"), *fptr = fopen("testing.txt","w");
    fprintf(fptr,"%d",1234);
    fclose(fptr);
    fseek(fp, 0, SEEK_END);
    int lengthOfFile = ftell(fp);
    printf("urt ni %d\n",lengthOfFile);
    fclose(fp);
    //bufferiin urtaar file lock hiine
    bSuccess = LockFile(hFileHandle, 0, 0, lengthOfFile,0);
    if(bSuccess){
        printf("shared File lock on %s secured.\n", szFilename);
    }
    bSuccess = UnlockFile(hFileHandle, 0, 0, lengthOfFile, 0);
    if(bSuccess){
        printf(" shared File lock on %s released.\n", szFilename);
    }
    /// hagas lock
    bSuccess = LockFile(hFileHandle, 0, 0, lengthOfFile/2,0);
    if(bSuccess){
        printf("shared File half lock on %s secured.\n", szFilename);
    }

    bSuccess = UnlockFile(hFileHandle, 0, 0, lengthOfFile, 0);
    if(bSuccess){
        printf("shared File half lock on %s released.\n", szFilename);
    }
    CloseHandle(hFileHandle);

///exclusive lock

    HANDLE hFile = CreateFile(szFile,   // lpFileName
        GENERIC_READ | GENERIC_WRITE,   // dwDesiredAccess
        FILE_SHARE_WRITE,               // dwShareMode
        0,                              // lpSecurityAttributes
        CREATE_ALWAYS,                  // dwCreationDisposition
        0,                              // dwFlagsAndAttributes
        0
    );
    OVERLAPPED overlapvar;
    overlapvar.Offset = 0;
    overlapvar.OffsetHigh = 0;
    bSuccess=LockFileEx(hFile, 0, 0, sizeof(szBuffer),0,&overlapvar);
    if(bSuccess){
        printf("exclusive File 1 ex lock on %s secured.\n", szFile);
    }
    bSuccess = UnlockFile(hFile, 0, 0, sizeof(szBuffer), 0);
    if(bSuccess){
        printf("exclusive File lock on %s released.\n", szFile);
    }

    /// hagas tsoojloh
    bSuccess=LockFileEx(hFile, 0, 0, sizeof(szBuffer)/2,0,&overlapvar);
    if(bSuccess){
        printf("exclusive File half lock on %s secured.\n", szFile);
    }
        while(1){

    }
    bSuccess = UnlockFile(hFile, 0, 0, sizeof(szBuffer)/2, 0);
    if(bSuccess){
        printf("half exclusive File lock on %s released.\n", szFile);
    }
    CloseHandle(hFile);
    return 0;
}
