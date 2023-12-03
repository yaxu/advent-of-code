#!/usr/bin/perl -w

use strict;

open(FH, "<advent2.txt");

my $total = 0;

while(<FH>) {
  my ($id, $games) = /Game (\d+): (.*)/;
  my $minimum = {red => 0, green => 0, blue => 0};
  for my $round (split('; ', $games)) {
    for my $cubes (split(', ', $round)) {
      my ($number, $colour) = $cubes =~ /(\d+) (\w+)/;
      if ($number > $minimum->{$colour}) {
        $minimum->{$colour} = $number;
      }
    }
  }
  my $power = $minimum->{red} * $minimum->{green} * $minimum->{blue};
  $total += $power;
}
print("$total\n");
