Crackme Collection
==================

	this repository = collection of crackme;
	
	crackme = {
		bin program,
		bin program_patched,
		src sourcecode,
		exec keygen
	};
	
	program = bin exec prg;
	program_patched = bin exec solution;
	sourcecode = src prg;
	keygen = exec solution;
	
	while ( !cracked( crackme.program ) )
	{
		try {
			crack crackme.program;
		} catch ( not cold ) {
			print "try harder";
		}
	}
	congrats ( "Be Happy!" );

License
=======

Do with it what you want. Have fun!
