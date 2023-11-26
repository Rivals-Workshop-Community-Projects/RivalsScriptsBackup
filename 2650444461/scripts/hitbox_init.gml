//hitbox_init

MattCanGrab = false;
MorshuCanGrab = false;
Pocketable = false;

if (attack == AT_NSPECIAL && hbox_num == 1 || attack == AT_FAIR){
    bubble_pop_sfx = sound_get("Bubble Pop");
    MattCanGrab = true;
    MorshuCanGrab = true;
    Pocketable = true;Pocket_hsp = 6;Pocket_vsp = 0;
    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 1;
}

if (attack == AT_NSPECIAL){
    if(hbox_num == 1){
        hsp += (5-random_func(1, 5, true))*player_id.spr_dir;
        vsp = -2+random_func(2, 6, true);
    }
}

if (attack == AT_DSPECIAL){
    if(hbox_num == 2){
    	MudkipPuddle = true;
    	UnReflectable = true;
        collision_sprite = sprite_get("mudpuddle_collision");
    }
}

if (attack == AT_DTILT){
    if(hbox_num == 4){
        MattCanGrab = true;
        MorshuCanGrab = true;
        Pocketable = true;Pocket_hsp = 7;Pocket_vsp = -7;
        Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 0;
    }
}

taunt_rain_Y = 0;
if (attack == AT_TAUNT){
    taunt_rain_Y = player_id.y;
    CalCanSnack = 1;
    //UnReflectable = true;
    //AriaCantAbsorb = true;
    Pocketable = true;Pocket_hsp = 0;Pocket_vsp = 10;Pocketed = false;
    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 2;
}

//intro pokeball
if(attack == AT_JAB && hbox_num == 3){
	UnReflectable = true;
	Pocketable = false;
	pokeball = 0;
	pokeball_sfx = sound_get("pokeball");
}

if (attack == AT_USPECIAL){
	UnReflectable = true;
}