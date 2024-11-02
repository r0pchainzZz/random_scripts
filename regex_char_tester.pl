#!/usr/bin/perl

use strict;
use warnings;

# Check input
if(scalar(@ARGV) < 2 )
{
    print "Please supply a regex and at least one character to test:\n";
    print "E.g.: perl regex_tester.pl 'REGEX' 'CHAR'\n";
}

my $pattern = $ARGV[0];
my $first = 0;
foreach (@ARGV)
{
    if ($first > 0)
    {
        if (eval($_ =~ /$pattern/))
        {
            print "$_ matches that regex\n";
        } else {
            print "$_ does NOT match\n";
        }
         
    }
    $first = 1;
}
