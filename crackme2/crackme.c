#include <stdio.h>
#include <string.h>

// TEST-ABCD-TEST-ABCD

int main(int argc, char **argv)
{
	if(argc != 2)
	{
		fprintf(stderr, "Usage: %s XXXX-XXXX-XXXX-XXXX\n", argv[0]);
		return 1;
	}
	if(strlen(argv[1]) != 19)
	{
		fprintf(stderr, "Wrong format! XXXX-XXXX-XXXX-XXXX\n");
		return 2;
	}
	if(argv[1][4] != '-' || argv[1][9] != '-' || argv[1][14] != '-')
	{
		fprintf(stderr, "Wrong format! XXXX-XXXX-XXXX-XXXX\n");
		return 2;
	}
	int sum = 0;
	for(int i=0; i<19; i++)
	{
		sum += argv[1][i];
	}
	if(sum != 1307)
	{
		fprintf(stderr, "Wrong Key!\n");
		return 1;
	}
	printf("Congratulations! You found the flag.\n");
	return 0;
}
