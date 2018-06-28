#!/usr/bin/env perl

use warnings;
use strict;

my $taille = pop @ARGV;   # Lecture de la ligne de commande
$\ = $, = "\n";           # "print" sépare tous ses paramètres avec des newlines
print tete($taille);
print '*' x (2 * $taille + 1);
print queue($taille);
exit(0);  ################################

sub tete {
  my ($taille) = @_;
  my @retval = my $tranche_de_tete = pointe($taille);
  foreach my $i (0 .. $taille - 2) {
    if ($i == 0) {
      $tranche_de_tete =~ s/ \*/* */;
    } else {
      $tranche_de_tete =~ s/( *) \*( *\*)/$1*  $2/;
    }
    push @retval, $tranche_de_tete;
  }
  return @retval;
}

sub queue {
  my ($taille) = @_;
  return map { pointe($taille) } (0 .. $taille - 1);
}

sub pointe {
  my ($taille) = @_;
  return  " " x $taille . "*";
}
