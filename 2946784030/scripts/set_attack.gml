//Aerial Down Special
if free == true && attack == AT_DSPECIAL{
    set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
    attack = AT_DSPECIAL_2;
}

//Down Taunt

if attack == AT_TAUNT && down_down && move_cooldown[AT_TAUNT] <= 0{
    attack = AT_TAUNT_2;
}

if (attack == AT_FSPECIAL && place_meeting(x, y, bike)){
    attack = AT_FSPECIAL;
}

//Bike CoolDown

if attack == AT_FSPECIAL && move_cooldown[AT_FSPECIAL] != 0{
    attack = AT_FSPECIAL_2;
}

//Throws with bike!

var move_horizontal = right_down - left_down;
var move_vertical = down_down - up_down;

if attack == AT_PICKUP{
    if move_horizontal != 0{window = 6;} //Throw Forward
    
    if move_vertical = -1{window = 9;} //Throw Up
    if move_vertical = 1{window = 12;} //Throw Down
    
    if move_horizontal == 0 && move_vertical == 0{window = 3;} //Throw Neutral

    if left_strong_pressed == true
    || right_strong_pressed == true{window = 6;}
    
    if up_strong_pressed == true{window = 9;}
    if down_strong_pressed == true{window = 12;}
    
}

//Final Smash (test)

//if attack == AT_NSPECIAL{attack = 49;}