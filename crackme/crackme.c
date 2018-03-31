#include <stdio.h>
#include <string.h>

// TEST-ABCD

int main(int argc, char **argv)
{
	if(argc != 2)
	{
		fprintf(stderr, "Usage: %s <key>\n", argv[0]);
		return 1;
	}
	int sum = 0;
	for(int i=0; i<strlen(argv[1]); i++)
	{
		sum += argv[1][i];
	}
	if(sum != 631)
	{
		fprintf(stderr, "Wrong Key!\n");
		return 1;
	}
	printf("Congratulations! You found the flag.\n");
	return 0;
}
