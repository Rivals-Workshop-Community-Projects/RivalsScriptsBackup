//BODYGUARD

init = 0;

switch(get_player_color(player)){
    
    case 13: //Beach
        sprite_index = sprite_get("bodyguardgrab_beach");
        break;
    case 14:
    default:
        sprite_index = sprite_get("bodyguardgrab");
        break;
     
    
}

mask_index = sprite_get("bodyguardmask");

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = false;
fallSpeed = 2;
grabbed = false;