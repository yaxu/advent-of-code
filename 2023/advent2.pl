#!/usr/bin/perl -w

use strict;

my $rules = {'red' => 12,
             'green' => 13,
             'blue' => 14
            };

open(FH, "<advent2.txt");

my $total = 0;

while(<FH>) {
  my ($id, $games) = /Game (\d+): (.*)/;
  my $possible = 1;
  for my $round (split('; ', $games)) {
    for my $cubes (split(', ', $round)) {
      my ($number, $colour) = $cubes =~ /(\d+) (\w+)/;
      if ($number > $rules->{$colour}) {
        $possible = 0;
      }
    }
  }
  $total += $id
    if $possible;
}
print("$total\n");
