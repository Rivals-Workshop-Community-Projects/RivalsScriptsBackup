//Cameos
image_xscale = 2;
image_yscale = 2;
state_timer = 0;
loops = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;
active = true;
depth = 5
animation_speed = 0.12;
flicker_on = true;
flicker_speed = 0.05;

switch(spawn_variables[0]){//Sprite
    case 0: //lantern
        sprite_index = sprite_get("lantern");
    break;
    case 1: //close lamp
        sprite_index = sprite_get("lamp_close");
    break;
    case 2: //far lamp
        sprite_index = sprite_get("lamp_far");
    break;
}

switch(spawn_variables[1]){//start offset
    case 1:
        x = x + 10;
        y = y + 2;
        flicker_speed = 0.051
    break;
    case 2:
        x = x - 4;
        y = y;
        flicker_speed = 0.061
    break;
    case 3:
        x = x - 2;
        y = y + 2;
        flicker_speed = 0.071
    break;
    case 4:
        x = x + 2;
        y = y + 2;
        flicker_speed = 0.062
    break;
    case 5:
        x = x - 2;
        y = y;
        flicker_speed = 0.052
    break;
    case 6:
        x = x - 6;
        y = y + 2;
        flicker_speed = 0.072
    break;
    case 7:
        x = x + 10;
        y = y + 2;
        flicker_speed = 0.073
    break;
    case 8:
        x = x + 6;
        y = y;
        flicker_speed = 0.063
    break;
    case 9:
        x = x + 2;
        y = y + 2;
        flicker_speed = 0.053
    break;
    case 10:
        x = x + 4;
        y = y + 2;
        flicker_speed = 0.049
    break;
    case 11:
        x = x +6;
        y = y;
        flicker_speed = 0.054
    break;
    case 12:
        x = x + 8;
        y = y + 2;
        flicker_speed = 0.064
    break;
}