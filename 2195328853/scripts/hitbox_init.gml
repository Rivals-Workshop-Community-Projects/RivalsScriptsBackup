//hitbox_init

dir = player_id.spr_dir;
num = 0;

MattCanGrab = false;
CalCanSnack = 0;
MorshuCanGrab = false;
UnReflectable = false;
Pocketable = false;

if(attack == AT_NSPECIAL){
    if (hbox_num == 1){
        UnReflectable = true;
        if("blob_ball" not in self)blob_ball = noone; 
    }
    AriaDontDestroyWhenAbsorbed = true;Toadie_Ability = 6;
    
    if (hbox_num == 2 || hbox_num >= 4){ //explosions
        Freezeable = false;WaterHitbox = true;
    }
    if (hbox_num == 4){ //ice hitboxes
        WaterHitbox = false;Toadie_Ability = 1;IceHitbox = true;
    }
}

if(attack == AT_FSPECIAL){
    if (hbox_num == 2){
        AriaCantAbsorb = true;
        AriaDontDestroyWhenAbsorbed = true;Freezeable = false;
    }else if (hbox_num == 3){
        MattCanGrab = true;
        CalCanSnack = 2;
        MorshuCanGrab = true;
        Pocketable = true;Pocketed = false;
        Pocket_hsp = 7;Pocket_vsp = 0;
        Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 5;
    }
    if (hbox_num >= 4){
        AriaDontDestroyWhenAbsorbed = true;Freezeable = false;
    }
}