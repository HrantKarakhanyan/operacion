#include <iostream>
#include <windows.h>

int main(){
    //run noteapad
    STARTUPINFOW si = {sizeof(STARTUPINFOW)};
    PROCESS_INFORMATION pi;
    if(CreateProcessW(L"C:\\Windows\\System32\\notepad.exe", NULL, NULL, NULL, FALSE , 0, NULL, NULL, &si, &pi))
    {
        std::wcout << L"Notepad stated successfully." << std::endl;

        //wait for 2 seconds
        Sleep(2000);

        //close Notepad
        TerminateProcess(pi.hProcess,0);
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);

        std::wcout << L"Notepad closed."<< std::endl;

    }
    else
    {
        std::wcerr << L"Failed to start Notepad." << std::endl;
        return 1;
    }

    return 0;
}
