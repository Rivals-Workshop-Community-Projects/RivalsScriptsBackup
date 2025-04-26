//hit_player - called when one of your hitboxes hits a player




if my_hitboxID.attack == AT_DAIR {
old_vsp = -7;
old_hsp = 0;
}
if my_hitboxID.attack == AT_FSPECIAL {
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
}

if (my_hitboxID.attack == AT_DSPECIAL) {
    if(my_hitboxID.hbox_num < 3){
    smog_cloud = instance_create(x, y + 30, ("obj_article1"));
    old_vsp = -7;
    old_hsp = 0;
    destroy_hitboxes();
    djumps = 0;
    move_cooldown[AT_DSPECIAL] = 60;
    window = 7;
    window_timer = 0;
    }
}

if(my_hitboxID.attack == AT_FSTRONG){
    if(my_hitboxID.hbox_num == 3){
    	if(my_hitboxID.hit_priority == 4){
    	smog_cloud = instance_create(other.x, other.y-30, ("obj_article1"));
		destroyed = true;
    	}
    }
}

if(my_hitboxID.attack == AT_USTRONG){
    if(my_hitboxID.hbox_num == 3){
    	if(my_hitboxID.hit_priority == 4){
    	smog_cloud = instance_create(other.x, other.y-30, ("obj_article1"));
		destroyed = true;
    	}
    }
}

if(my_hitboxID.attack == AT_USPECIAL){
    	if(my_hitboxID.hit_priority == 4){
    	smog_cloud = instance_create(other.x, other.y-30, ("obj_article1"));
		destroyed = true;
    }
}

//sfx
if (attack == AT_FTILT) {
    sound_play(asset_get("sfx_hod_steamhit1"));
}

if (attack == AT_DATTACK) {
    sound_play(asset_get("sfx_hod_steamhit3"));
}

if (my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_DSPECIAL_2){
    hit_player_obj.sdi_mult = 1;
    hit_player_obj.dumb_di_mult = 1;
}
