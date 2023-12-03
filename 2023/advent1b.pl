#!/usr/bin/perl

use strict;


my $numbers = {'one' => 1,
               'two' => 2,
               'three' => 3,
               'four' => 4,
               'five' => 5,
               'six' => 6,
               'seven' => 7,
               'eight' => 8,
               'nine' => 9
              };

my $total = 0;
open(DATAFILE, '<trebuchet.txt');
while (<DATAFILE>) {
  chomp;
  print("$_\n");
  my ($first) = /^.*?(one|two|three|four|five|six|seven|eight|nine|\d)/;
  print " a = $first\n";
  $first = $numbers->{$first} || $first;

  my ($last) = /^.*(one|two|three|four|five|six|seven|eight|nine|\d)/;
  print " b = $last\n";
  $last = $numbers->{$last} || $last;

  my $number = $first . $last;
  print("= $number\n");
  $total += $number;
}

print($total)
