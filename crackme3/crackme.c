#include <stdio.h>
#include <string.h>
#define WRONG fprintf(stderr, "Wrong Key!\n")

// TEST-ABCD-BLAH-BLUB

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
	int sum1 = 0;
	int sum2 = 0;
	int sum3 = 0;
	int sum4 = 0;
	for(int i=0; i<4; i++)
	{
		sum1 += argv[1][i];
	}
	if(sum1 != 320)
	{
		WRONG;
		return 1;
	}
	for(int i=5; i<9; i++)
	{
		sum2 += argv[1][i];
	}
	if(sum2 != 266)
	{
		WRONG;
		return 1;
	}
	for(int i=10; i<14; i++)
	{
		sum3 += argv[1][i];
	}
	if(sum3 != 279)
	{
		WRONG;
		return 1;
	}
	for(int i=15; i<19; i++)
	{
		sum4 += argv[1][i];
	}
	if(sum4 != 293)
	{
		WRONG;
		return 1;
	}
	printf("Congratulations! You found the flag.\n");
	return 0;
}
