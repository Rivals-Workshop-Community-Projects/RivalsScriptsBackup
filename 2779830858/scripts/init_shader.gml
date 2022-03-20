//eee
switch (get_player_color(player)){

case 0:
set_character_color_slot(1, 247, 236, 228, 1);
set_character_color_slot(7, 255, 246, 232, 1);
break;

//True Damage
case 4:
set_character_color_shading( 0, 0.6 );//bat
set_character_color_shading( 1, 0.6 );//hair
set_character_color_shading( 2, 1 );//skin
set_character_color_shading( 3, 0.5 );//shirt
// set_character_color_shading( 4, 0.5 );//scarf
// set_character_color_shading( 5, 0.4 );//pants
// set_character_color_shading( 6, 0.5 );//gloves
// set_character_color_shading( 7, 0 );//facepaint
break;


//Cloud
case 6:
set_character_color_shading( 0, 1.2 );//bat
set_character_color_shading( 1, 0.7 );//hair
set_character_color_shading( 2, 1.5 );//skin
set_character_color_shading( 3, 0.5 );//shirt
set_character_color_shading( 4, 0.5 );//scarf
set_character_color_shading( 5, 0.4 );//pants
set_character_color_shading( 6, 0.5 );//gloves
set_character_color_shading( 7, 0 );//facepaint
break;

//KH Cloud
case 7:
set_character_color_shading( 0, 1.2 );//bat
set_character_color_shading( 1, 0.7 );//hair
set_character_color_shading( 2, 1.5 );//skin
set_character_color_shading( 3, 0.6 );//shirt
set_character_color_shading( 4, 0.5 );//scarf
set_character_color_shading( 5, 0.9 );//pants
set_character_color_shading( 6, 0.5 );//gloves
set_character_color_shading( 7, 0 );//facepaint
break;

//TURPIX
case 8:
set_character_color_shading( 0, 1.2 );//bat
set_character_color_shading( 1, 0.6 );//hair
set_character_color_shading( 2, 1.5 );//skin
set_character_color_shading( 3, 0.7 );//shirt
//set_character_color_shading( 4, 1 );//scarf
set_character_color_shading( 5, 1.25 );//pants
set_character_color_shading( 6, 0.5 );//gloves
set_character_color_shading( 7, 0 );//facepaint
break;

//Sol
case 9:
set_character_color_shading( 0, 1.1 );//bat
set_character_color_shading( 1, 0.7 );//hair
set_character_color_shading( 2, 1.5 );//skin
set_character_color_shading( 3, 0.6 );//shirt
set_character_color_shading( 4, 1 );//scarf
set_character_color_shading( 5, 1.5 );//pants
set_character_color_shading( 6, 0.5 );//gloves
set_character_color_shading( 7, 0.6 );//facepaint
break;

//Joker
case 10:
//set_character_color_shading( 0, 1 );//bat
set_character_color_shading( 1, 0.9 );//hair
//set_character_color_shading( 2, 1 );//skin
//set_character_color_shading( 3, 1 );//shirt
//set_character_color_shading( 4, 1 );//scarf
set_character_color_shading( 5, 1.2 );//pants
//set_character_color_shading( 6, 1 );//gloves
//set_character_color_shading( 7, 1 );//facepaint
break;

//KRIS
case 11:
set_character_color_shading( 0, 1.1 );//bat
set_character_color_shading( 1, 0.2 );//hair
set_character_color_shading( 2, 0 );//skin
set_character_color_shading( 3, 0.6 );//shirt
set_character_color_shading( 4, 1 );//scarf
set_character_color_shading( 5, 0.8 );//pants
set_character_color_shading( 6, 0.5 );//gloves
set_character_color_shading( 7, 0 );//facepaint
outline_color = [11, 11, 59];
break;

//STEVE
case 12:
set_character_color_shading( 0, 1.1 );//bat
set_character_color_shading( 1, 0.5 );//hair
set_character_color_shading( 2, 1.5 );//skin
set_character_color_shading( 3, 0.9 );//shirt
set_character_color_shading( 4, 1 );//scarf
set_character_color_shading( 5, 1.2 );//pants
set_character_color_shading( 6, 0.5 );//gloves
set_character_color_shading( 7, 0 );//facepaint
break;

//NAC
case 13:
set_character_color_shading( 0, 0.4 );//bat
set_character_color_shading( 1, 0.5 );//hair
set_character_color_shading( 2, 1.5 );//skin
set_character_color_shading( 3, 0.4 );//shirt
set_character_color_shading( 4, 0.4 );//scarf
set_character_color_shading( 5, 1.2 );//pants
set_character_color_shading( 6, 0.5 );//gloves
set_character_color_shading( 7, 0.5 );//facepaint
break;

//BLM
case 14:
// set_character_color_shading( 0, 1 );//bat
// set_character_color_shading( 1, 1 );//hair
// set_character_color_shading( 2, 1 );//skin
 set_character_color_shading( 3, 0.4 );//shirt
// set_character_color_shading( 4, 1 );//scarf
set_character_color_shading( 5, 1.8 );//pants
// set_character_color_shading( 6, 1 );//gloves
// set_character_color_shading( 7, 1 );//facepaint
break;

}

//clone colors
var clone_r = get_color_profile_slot_r( get_player_color(player), 0 );
var clone_g = get_color_profile_slot_g( get_player_color(player), 0 );
var clone_b = get_color_profile_slot_b( get_player_color(player), 0 );

for(var i = 0; i <= 14; i++){
set_article_color_slot(i, clone_r, clone_g, clone_b, 1);
}

//rewind colors and outline

if ("rewind_travel_time" in self){
    if (rewind_travel_time != 0){
    set_character_color_slot(i, clone_r, clone_g, clone_b, 1);
    }

    //outlines
    switch (get_player_color(player)){

    //KRIS
    case 11:

    outline_color = [11, 11, 59];

    break;

    }

}