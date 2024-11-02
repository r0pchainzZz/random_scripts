#!/usr/bin/perl

use strict;
use warnings;

# Check input
if(scalar(@ARGV) == 0 )
{
    print "no regex supplied.\n";
}


my @match; 
my @no_match;


foreach (0..128)
{
    if(eval(chr($_) =~ /$ARGV[0]/))
    {
        #print "$_ matches\n";
        push @match, $_;
    } else {
        push @no_match, $_;
    }
}

print "MATCHING CHARACTERS BY ASCII CODES:\n";
foreach (@match)
{
    print $_ . " - '" . chr($_) . "'\n";
} 

print "\n";
