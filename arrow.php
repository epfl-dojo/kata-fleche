<?php

$height = 10;

function line($height){
    for ($i = 1; $i < ($height*2); $i++) {
        echo "* ";
    }
}

function tige($height) {
    echo "\n";
    for($i = 0; $i < $height; $i++) {
        echo str_repeat(' ', ($height*2)-2);
        echo "*\n";
    }
}

function arrow($height) {
    $nb = 0;
    for($i = 0; $i < $height-1; $i++) {
        $nb += 2;
        $space = ($height*2)-$nb;
        if($nb == 2){
            echo str_repeat(' ', $space);
            echo "*\n";
        } else {
            echo str_repeat(' ', $space);
            echo "*";
            echo str_repeat(' ', $nb*2-6);
            echo " *\n";
        }
    }
}

arrow($height);
line($height);
tige($height);