#!/bin/perl -w

use strict;
BEGIN {srand() if $] < 5.004}

print int(rand(599)) . "\n";
print int(rand(539)) + 600 . "\n";
print int(rand(479)) + 1140 . "\n";
print int(rand(419)) + 1620 . "\n";
print int(rand(359)) + 2040 . "\n";
print int(rand(299)) + 2400 . "\n";
print int(rand(239)) + 2700 . "\n";
print int(rand(179)) + 2940 . "\n";
print int(rand(119)) + 3120 . "\n";
print int(rand(59)) + 3240 . "\n";

