//hitbox_init

MattCanGrab = false;
MorshuCanGrab = false;

if (attack == AT_NSPECIAL && hbox_num == 1 || attack == AT_FAIR){
    MattCanGrab = true;
    MorshuCanGrab = true;
}

if (attack == AT_NSPECIAL){
    if(hbox_num == 1){
        hsp += (5-random_func(1, 5, true))*player_id.spr_dir;
        vsp = -2+random_func(2, 6, true);
    }
}

if (attack == AT_DSPECIAL){
    if(hbox_num == 2){
        collision_sprite = sprite_get("mudpuddle_collision");
    }
}

taunt_rain_Y = 0;
if (attack == AT_TAUNT){
    taunt_rain_Y = player_id.y;
}