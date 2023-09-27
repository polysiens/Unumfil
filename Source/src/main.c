/* [Includes] */
#include "../include/main.h"

/* [Definitions] */
//
#define INPUT_PATH "D:\\GIT\\MultiThreadLanguageProject\\Source\\InputFile.txt"
/* [Static Functions] */
//

/* Code Section */
int main()
{
    char *p_Input        = NULL;
    FILE* p_FileHandle   = NULL;
    char a_FilePath[256] = INPUT_PATH;
    int readCurrent      = 0;
    int readTotal        = 0;
    
    p_FileHandle = fopen((const char*)&a_FilePath, "r");

    if(!p_FileHandle)
    {
      printf("File doesn't exist!\n");
      return -1;
    }

    fseek(p_FileHandle, 0, SEEK_END);
    readTotal = ftell(p_FileHandle);
    fseek(p_FileHandle, 0, SEEK_SET);

    if(readTotal <= 0)
    {
      printf("Error occured while reading the file, file reports 0 lines.\n");
      return -1;
    }

    p_Input = (char*)calloc(readTotal, sizeof(char));
    if (!p_Input)
    {
      printf("Failed to allocate memory!\n");
      return -1;
    }

    fread(p_Input, sizeof(char), readTotal, p_FileHandle);
    printf("\n READ_RESULT: %s\n", p_Input);
    // while(fgets(&p_Input[readTotal],(readTotal - readCurrent), p_FileHandle) != NULL)
    // {

    // }

    return 0;
}