<?php

$height = 10;

function line($height){
    for ($i = 1; $i < ($height*2); $i++) {
        echo "*";
    }
}

function tige($height) {
    echo nl2br("\n");
    for($i = 0; $i < $height; $i++) {
        echo str_repeat('&nbsp', ($height*2)-2);
        echo nl2br("*\n");
    }
}

function arrow($height) {
    $nb = 0;
    for($i = 0; $i < $height-1; $i++) {
        $nb += 2;
        $space = ($height*2)-$nb;
        if($nb == 2){
            echo str_repeat('&nbsp', $space);
            echo nl2br("*\n");
        } else {
            echo str_repeat('&nbsp', $space);
            echo nl2br("*");
            echo str_repeat('&nbsp', $nb*2-6);
            echo nl2br("*\n");
        }
    }
}

arrow($height);
line($height);
tige($height);