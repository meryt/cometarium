#!/bin/perl -w

use strict;

BEGIN {srand() if $] < 5.004}

#******************************************************************************
my $genomesize = 3300;
my %param256;
$param256{"PRIMARYCOLOR_RED"} = [354,1109,1338,1782,2227,2427,2930,2977];
$param256{"PRIMARYCOLOR_BLU"} = [584,794,1428,1982,2184,2491,2798,2963];
$param256{"PRIMARYCOLOR_GRN"} = [437,1114,1431,1907,2149,2547,2896,2954];
$param256{"SECONDARYCOLOR_RED"} = [55,690,1442,1949,2306,2458,2876,2945];
$param256{"SECONDARYCOLOR_BLU"} = [157,969,1315,1656,2242,2463,2921,3092];
$param256{"SECONDARYCOLOR_GRN"} = [336,998,1152,1763,2256,2511,2835,3077];
$param256{"VISUAL_ACUITY"} = [503,706,1507,1664,2191,2638,2711,3034];
$param256{"LIGHT_SENSITIVITY"} = [89,890,1506,1828,2322,2626,2823,3079];
$param256{"LIGHT_AFFINITY"} = [24,709,1484,1864,2141,2600,2895,3052];
$param256{"TOUCH_SENSITIVITY"} = [553,968,1305,1965,2140,2436,2863,3094];
$param256{"HEAT_SENSITIVITY"} = [541,846,1483,1981,2186,2655,2833,2971];
$param256{"HEAT_AFFINITY"} = [159,937,1354,1735,2209,2682,2725,3062];
$param256{"SALT_SENSITIVITY"} = [472,832,1205,1650,2393,2515,2820,3003];
$param256{"SALT_AFFINITY"} = [38,861,1524,1681,2141,2483,2873,3026];
# salinity ranges from 0 (0g salt/1000g water) to 35 (sea water) to 300 (Dead sea)
$param256{"ODOR_SENSITIVITY"} = [460,1097,1170,1621,2288,2586,2720,3019];
$param256{"PLANT_DIGEST_EFFICIENCY"} = [90,1615,1744,2243,2455,2811,3032];
$param256{"MEAT_DIGEST_EFFICIENCY"} = [186,1530,1760,2385,2432,2914,3070];
$param256{"AMMONIA_TOLERANCE"} = [335,948,1399,1852,2147,2619,2737,3034];
$param256{"OXYGEN_DIFFUSION_EFFICIENCY"} = [367,642,1294,1990,2140,2589,2810,2940];
$param256{"LIFESPAN"} = [60,717,1407,1743,2293,2445,2759,3118];
$param256{"VEG_REPRO_CHANCE"} = [467,760,1559,1982,2119,2478,2784,3019];
$param256{"SEX_REPRO_CHANCE"} = [595,638,1218,1875,2241,2540,2707,3053];
$param256{"VEG_REPRO_PERIOD"} = [188,875,1305,1926,2074,2448,2748,3114];
$param256{"SEX_REPRO_PERIOD"} = [197,1037,1149,1988,2059,2581,2916,3069];
$param256{"MATERNAL_INSTINCT"} = [391,968,1298,1630,2153,2579,2889,2969];
$param256{"PATERNAL_INSTINCT"} = [114,950,1451,1983,2319,2528,2824,3051];
$param256{"SKIN_THICKNESS"} = [503,999,1588,1775,2083,2607,2721,3000];
$param256{"SKIN_HARDNESS"} = [236,1105,1439,2034,2154,2417,2834,3115];
$param256{"NUM_EYESPOTS"} = [174,192];
$param256{"NUM_ANTENNAE"} = [361,822];
$param256{"ANTENNAE_LENGTH"} = [142,938,1303,1921,2160,2639,2886,3099];
$param256{"ANTENNAE_SENSITIVITY"} = [318,766,1193,1743,2246,2583,2857,2986];
$param256{"ANTENNAE_STRENGTH"} = [381,1025,1587,1715,2145,2591,2930,2980];
$param256{"NUM_REAR_FEELERS"} = [480,666];
$param256{"REAR_FEELER_LENGTH"} = [544,1106,1496,1860,2160,2526,2896,3101];
$param256{"REAR_FEELER_SENSITIVITY"} = [463,1120,1445,1700,2346,2542,2877,3063];
$param256{"REAR_FEELER_STRENGTH"} = [258,1029,1143,1843,2107,2659,2759,3114];

#******************************************************************************

#my @genome;
#@genome = generateGenome();

#print "Genome generated\n";

#printGenome(@genome);

my $filename = "genome1.gen";
#saveGenome($filename, @genome);
#print "\nGenome saved\n";

my @genome2 = loadGenome($filename);
print "Genome loaded\n";

#printGenome(@genome2);

print "Primary RGB: " . getGenotype("PRIMARYCOLOR_RED",@genome2) . ",";
print getGenotype("PRIMARYCOLOR_BLU",@genome2) . ",";
print getGenotype("PRIMARYCOLOR_GRN",@genome2) . "\n";
print "Secondary RGB: " . getGenotype("SECONDARYCOLOR_RED",@genome2) . ",";
print getGenotype("SECONDARYCOLOR_BLU",@genome2) . ",";
print getGenotype("SECONDARYCOLOR_GRN",@genome2) . "\n";
print "Visual Acuity: " . getGenotype("VISUAL_ACUITY", @genome2) . "\n";
print "Light Sensitivity: " . getGenotype("LIGHT_SENSITIVITY", @genome2) . "\n";
print "Light Affinity: " . getGenotype("LIGHT_AFFINITY", @genome2) . "\n";
print "Touch Sensitivity: " . getGenotype("TOUCH_SENSITIVITY", @genome2) . "\n";
print "Heat Sensitivity: " . getGenotype("HEAT_SENSITIVITY", @genome2) . "\n";
print "Heat Affinity: " . getGenotype("HEAT_AFFINITY", @genome2) . "\n";
print "Salt Sensitivity: " . getGenotype("SALT_SENSITIVITY", @genome2) . "\n";
print "Salt Affinity: " . getGenotype("SALT_AFFINITY", @genome2) . "\n";
print "Odor Sensitivity: " . getGenotype("ODOR_SENSITIVITY", @genome2) . "\n";
print "Plant Digest Efficiency: " . getGenotype("PLANT_DIGEST_EFFICIENCY", @genome2) . "\n";
print "Meat Digest Efficiency: " . getGenotype("MEAT_DIGEST_EFFICIENCY", @genome2) . "\n";
print "Ammonia Tolerance: " . getGenotype("AMMONIA_TOLERANCE", @genome2) . "\n";
print "Oxygen Diffusion Efficiency: " . getGenotype("OXYGEN_DIFFUSION_EFFICIENCY", @genome2) . "\n";
print "Lifespan: " . getGenotype("LIFESPAN", @genome2) . "\n";
print "Vegetative Reproduction Chance: " . getGenotype("VEG_REPRO_CHANCE", @genome2) . "\n";
print "Sexual Reproduction Chance: " . getGenotype("SEX_REPRO_CHANCE", @genome2) . "\n";
print "Vegetative Reproduction Period: " . getGenotype("VEG_REPRO_PERIOD", @genome2) . "\n";
print "Sexual Reproduction Period: " . getGenotype("SEX_REPRO_PERIOD", @genome2) . "\n";
print "Maternal Instinct: " . getGenotype("MATERNAL_INSTINCT", @genome2) . "\n";
print "Paternal Instinct: " . getGenotype("PATERNAL_INSTINCT", @genome2) . "\n";
print "Skin hardness: " . getGenotype("SKIN_HARDNESS", @genome2) . "\n";
print "Skin thickness: " . getGenotype("SKIN_THICKNESS", @genome2) . "\n";
print "Number of eyespots: 2^" . getGenotype("NUM_EYESPOTS", @genome2) . "\n";
print "Number of frontal feelers: 2^" . getGenotype("NUM_ANTENNAE", @genome2) . "\n";
print "Frontal feeler length: " . getGenotype("ANTENNAE_LENGTH", @genome2) . "\n";
print "Frontal feeler strength: " . getGenotype("ANTENNAE_STRENGTH", @genome2) . "\n";
print "Frontal feeler sensitivity: " . getGenotype("ANTENNAE_SENSITIVITY", @genome2) . "\n";
print "Number of rear feelers: 2^" . getGenotype("NUM_REAR_FEELERS", @genome2) . "\n";
print "Rear feeler length: " . getGenotype("REAR_FEELER_LENGTH", @genome2) . "\n";
print "Rear feeler strength: " . getGenotype("REAR_FEELER_STRENGTH", @genome2) . "\n";
print "Rear feeler sensitivity: " . getGenotype("REAR_FEELER_SENSITIVITY", @genome2) . "\n";

print "\nDone\n";

#******************************************************************************
sub getGenotype {
	my $val = shift;
	my @gen = @_;
	my $ret = 0;

	for (my $j = 0; $j < scalar(@{$param256{$val}}); $j++) {
		$ret += (2**$j) * ($gen[${$param256{$val}}[$j]]);
	}

	return $ret;
}

#******************************************************************************
sub generateGenome {
	my @gen;
	for (my $i = 0; $i < $genomesize; $i++) {
		$gen[$i] =  rand(100) >= 50 ? 1 : 0;
	}
	return @gen;
}

#******************************************************************************
sub printGenome {
	my @gen = @_;
	for (my $i = 0; $i < $genomesize; $i++) {
		print $gen[$i];
	}
}

#******************************************************************************
sub saveGenome {
	my $filename = shift;
	my @genomedata = @_;

	open F, ">$filename" or die "Could not open $filename for writing";
	print F @genomedata;
	close F;

}

#******************************************************************************
sub loadGenome {
	my $filename = shift;
	my @newgenome;
	open F, $filename or die "Could not open genome file $filename for reading";
	my @data = <F>;
	close F;

	for (my $i = 0; $i < $genomesize; $i++) {
		$newgenome[$i] = substr($data[0],$i,1) eq "1" ? 1 : 0;
	}

	return @newgenome;
}


