#!/usr/bin/env perl

@alpha = (A..Z,'-','_');
%al = map { $_ => 1 } @alpha;

$length = 4;

$num1 = 320;
$num2 = 266;
$num3 = 279;
$num4 = 293;
$str1 = $str2 = $str3 = $str4 = "";
$sum1 = $sum2 = $sum3 = $sum4 = 0;

while (1) {
	while($sum1 != $num1)
	{
		if(length($str1) >= $length)
		{
			$str1 = "";
			$sum1 = 0;
		} else {
			$rnd = int(rand(@alpha));
			if($sum1+ord($alpha[$rnd]) > $num1 && length($str1)+1 == $length)
			{
				if(exists($al{chr($num1-$sum1)}))
				{
					$str1 .= chr($num1-$sum1);
					$sum1 += $num1-$sum1;
					#print "Str1: $str1 (Sum: $sum1)\n";
				} else {
					$str1 = "";
					$sum1 = 0;
				}
			} else {
				$str1 .= $alpha[$rnd];
				$sum1 += ord($alpha[$rnd]);
			}
		}
	}

	while($sum2 != $num2)
	{
		if(length($str2) >= $length)
		{
			$str2 = "";
			$sum2 = 0;
		} else {
			$rnd = int(rand(@alpha));
			if($sum2+ord($alpha[$rnd]) > $num2 && length($str2)+1 == $length)
			{
				if(exists($al{chr($num2-$sum2)}))
				{
					$str2 .= chr($num2-$sum2);
					$sum2 += $num2-$sum2;
					#print "Str2: $str2 (Sum: $sum2)\n";
				} else {
					$str2 = "";
					$sum2 = 0;
				}
			} else {
				$str2 .= $alpha[$rnd];
				$sum2 += ord($alpha[$rnd]);
			}
		}
	}

	while($sum3 != $num3)
	{
		if(length($str3) >= $length)
		{
			$str3 = "";
			$sum3 = 0;
		} else {
			$rnd = int(rand(@alpha));
			if($sum3+ord($alpha[$rnd]) > $num3 && length($str3)+1 == $length)
			{
				if(exists($al{chr($num3-$sum3)}))
				{
					$str3 .= chr($num3-$sum3);
					$sum3 += $num3-$sum3;
					#print "Str3: $str3 (Sum: $sum3)\n";
				} else {
					$str3 = "";
					$sum3 = 0;
				}
			} else {
				$str3 .= $alpha[$rnd];
				$sum3 += ord($alpha[$rnd]);
			}
		}
	}

	while($sum4 != $num4)
	{
		if(length($str4) >= $length)
		{
			$str4 = "";
			$sum4 = 0;
		} else {
			$rnd = int(rand(@alpha));
			if($sum4+ord($alpha[$rnd]) > $num4 && length($str4)+1 == $length)
			{
				if(exists($al{chr($num4-$sum4)}))
				{
					$str4 .= chr($num4-$sum4);
					$sum4 += $num4-$sum4;
					#print "Str4: $str4 (Sum: $sum4)\n";
				} else {
					$str4 = "";
					$sum4 = 0;
				}
			} else {
				$str4 .= $alpha[$rnd];
				$sum4 += ord($alpha[$rnd]);
			}
		}
	}

	print "Found Key: $str1-$str2-$str3-$str4\n";
	$str1 = $str2 = $str3 = $str4 = "";
	$sum1 = $sum2 = $sum3 = $sum4 = 0;
}
