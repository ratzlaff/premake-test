#include "shared.h"

#include <stdio.h>

void shared_print(const std::string& inFrom)
{
    printf("Hello from %s!\n", inFrom.c_str());
}
