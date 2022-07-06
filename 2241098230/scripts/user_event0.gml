if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 7 ) {
    sound_play(asset_get( "sfx_blow_heavy1" ))
    sound_play(asset_get( "sfx_blow_heavy2" ))
    sound_play(asset_get( "sfx_forsburn_consume_full" ))


}
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 6) {
    sound_play(asset_get( "sfx_blow_heavy2" ))

}
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 5) {
    sound_play(asset_get( "sfx_blow_heavy2" ))
    sound_play(asset_get( "sfx_forsburn_consume_full" ))

}
if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 3) {
    sound_play(asset_get( "sfx_blow_heavy2" ))
    sound_play(asset_get( "sfx_forsburn_consume_full" ))


}
if (my_hitboxID.attack == AT_UTHROW && my_hitboxID.hbox_num == 2|| my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 2) {
    sound_play(asset_get( "sfx_blow_heavy2" ))
    sound_play(asset_get( "sfx_forsburn_consume_full" ))


}
//Throws
if (my_hitboxID.attack == AT_UAIR && attack == AT_UAIR){
    if (my_hitboxID.hbox_num == 1 && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && attack == AT_NSPECIAL){
    if (my_hitboxID.hbox_num == 1 && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_FSPECIAL && attack == AT_FSPECIAL){
    if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
        y -= 2;
    }
}

if (my_hitboxID.attack == AT_USPECIAL && attack == AT_USPECIAL){
    if ((my_hitboxID.hbox_num >= 1 && my_hitboxID.hbox_num <= 3) && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
	    window = 5;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && attack == AT_DSPECIAL && has_rune("E")){
	speedboost_timer = 60;
}

if (my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)) {
	hit_player_obj.should_make_shockwave = false;
}