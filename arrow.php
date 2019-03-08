<?php

$size = (int)$argv[1];

if(($size < 2) || ($size > 20)){
  print 'Veuillez saisir un chiffre entre 2 et 20';
  exit;
}

function base($size){
    for ($i = 1; $i < ($size*2); $i++) {
        print "* ";
    }
}

function tail($size) {
    print "\n";
    for($i = 0; $i < $size; $i++) {
        print str_repeat(' ', ($size*2)-2);
        print "*\n";
    }
}

function arrow($size) {
    $nb = 0;
    for($i = 0; $i < $size-1; $i++) {
        $nb += 2;
        $space = ($size*2)-$nb;
        if($nb == 2){
            print str_repeat(' ', $space);
            print "*\n";
        } else {
            print str_repeat(' ', $space);
            print "*";
            print str_repeat(' ', $nb*2-6);
            print " *\n";
        }
    }
}

arrow($size);
base($size);
tail($size);
