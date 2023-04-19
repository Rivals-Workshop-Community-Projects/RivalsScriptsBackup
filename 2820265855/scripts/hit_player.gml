if(my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2){
    old_vsp = -5;
}

if(powerpoints < 64){
    powerpoints++;
}

if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num < 3 && free){
    if(old_vsp > -2){
        old_vsp = -2;
    }
}


if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num < 5){
    hit_player_obj.should_make_shockwave = false;
}

if(my_hitboxID.attack == AT_NSPECIAL_2){
    my_hitboxID.destroyed = true;
    my_hitboxID.destroy_fx = 1;
    sound_play(asset_get( "sfx_oly_crystal_cracking" ));
}

if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num < 5){
    hit_player_obj.blaze_fspecial_grab = self;
} else {
    hit_player_obj.blaze_fspecial_grab = noone;
}

if(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num < 4){
    hit_player_obj.blaze_uspecial_grab = self;
} else {
    hit_player_obj.blaze_uspecial_grab = noone;
}
