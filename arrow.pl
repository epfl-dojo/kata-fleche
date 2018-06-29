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
      # Remplaçons "*" par "* *"
      $tranche_de_tete =~ s/[*]/* */;
    } else {
      # Ajoutons deux espaces entre les étoiles
      $tranche_de_tete =~ s/[*]( *)[*]/*$1  */;
    }
    # Dans les deux cas, il faut ensuite décaler toute la tranche d'un
    # espace vers la gauche
    $tranche_de_tete =~ s/^ //;
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
