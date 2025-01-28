#include <stdio.h>
#include <stddef.h>

// Declare the external assembly function
extern size_t ft_strlen(const char *str);

int main(void) 
{
    
	const char *test_str1 = "Hello, ARM64!";
    printf("Length of \"%s\": %zu\n", test_str1, ft_strlen(test_str1));

    return 0;
}
