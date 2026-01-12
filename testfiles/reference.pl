# Perl Reference File

use strict;
use warnings;
use Math::Trig;

sub distance {
    my ($a, $b) = @_;
    return sqrt(($a->{x} - $b->{x})**2 + ($a->{y} - $b->{y})**2);
}

my $p1 = { x => 0, y => 0 };
my $p2 = { x => 3, y => 4 };

print "Distance: ", distance($p1, $p2), "\n";
