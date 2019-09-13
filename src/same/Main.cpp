#include "shared.h"

void shared_print(const std::string& inName)
{
    printf("Hello %s from same!\n", inName.c_str());
}