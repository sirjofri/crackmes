#!/usr/bin/env perl

$number = 631;
@alpha = (a..z,A..Z,'-','_');
%al = map { $_ => 1 } @alpha;

$str = "";
$sum = 0;

while (1) {
	$rnd = int(rand(@alpha));
	$sum += ord($alpha[$rnd]);
	#print "Trying $str (sum= $sum )\n";
	if($sum > $number) {
		$sum -= ord($alpha[$rnd]);
		if(exists($al{chr($number - $sum)}))
		{
			$str .= chr($number - $sum);
			$sum += $number - $sum;
			print "Found Key: $str (sum = $sum)\n";
		}

		$str = "";
		$sum = 0;
		next;
	} else {
		$str .= $alpha[$rnd];
	}
}
