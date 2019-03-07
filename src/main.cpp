#include "shared.h"

int main()
{
    shared_print("Main");
	return 0;
}

#ifdef MAIN_ONLY
void shared_print(const std::string& inFrom)
{
    printf("Hello from executable: %s!\n", inFrom.c_str());
}
#endif
