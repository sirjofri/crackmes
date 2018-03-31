#!/usr/bin/env perl

$number = 1307-3*ord('-');
$length = 19-3;
@alpha = (a..z,A..Z,'-','_');
%al = map { $_ => 1 } @alpha;

$str = "";
$sum = 0;

while (1) {
	$rnd = int(rand(@alpha));
	$sum += ord($alpha[$rnd]);
	#print "Trying $str$alpha[$rnd] (sum= $sum )\n";
	if(length($str)+1 > $length)
	{
		#print "Wrong length: ",length($str)+1,"/",$length,"\n";
		$str = "";
		$sum = 0;
		next;
	}
	if($sum > $number && length($str)+1 == $length) {
		$sum -= ord($alpha[$rnd]);
		if(exists($al{chr($number - $sum)}))
		{
			$str .= chr($number - $sum);
			$sum += $number - $sum;
			@string = split(//,$str);
			print "Found Key: ",@string[0..3],"-",@string[4..7],"-",@string[8..11],"-",@string[12..$#string]," (sum = ",$sum+3*ord('-'),")\n";
		}

		$str = "";
		$sum = 0;
		next;
	} else {
		$str .= $alpha[$rnd];
	}
}
