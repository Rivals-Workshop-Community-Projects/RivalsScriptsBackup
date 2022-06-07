

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1{
    if my_hitboxID.hbox_num == 1 {
		sound_stop(asset_get("sfx_frog_jab"));
        sound_play(asset_get("sfx_frog_jab"));
		spawn_hit_fx( hit_player_obj.x , hit_player_obj.y-32, 144 );
    }
    if my_hitboxID.hbox_num == 3 {
       // sound_play(asset_get("sfx_blow_heavy2"))
		//sound_play(asset_get("sfx_zap"))
    }
}

if my_hitboxID.attack == AT_USPECIAL && ( my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
	hit_player_obj.old_hsp=hsp*4/5;
	hit_player_obj.x= (x +hit_player_obj.x)/2;
	hit_player_obj.old_vsp=vsp*1.1;
	hit_player_obj.should_make_shockwave=false;
}




if my_hitboxID.attack == AT_FSPECIAL && ( my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
	hit_player_obj.old_vsp=vsp;
	hit_player_obj.should_make_shockwave=false;
}


if my_hitboxID.attack == AT_NAIR && ( my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
	hit_player_obj.old_hsp=hsp;
	hit_player_obj.should_make_shockwave=false;
}
if my_hitboxID.attack == AT_NAIR{
	spawn_hit_fx( hit_player_obj.x , hit_player_obj.y-32, will_effect );
}


if my_hitboxID.attack == AT_DATTACK	|| my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_JAB{
	spawn_hit_fx( my_hitboxID.x , my_hitboxID.y, 154 );
}



if my_hitboxID.attack == AT_UTILT{
	spawn_hit_fx( my_hitboxID.x , my_hitboxID.y, 154 );
}



if my_hitboxID.attack == AT_DAIR {
	if my_hitboxID.hbox_num == 3{
		spawn_hit_fx( my_hitboxID.x , my_hitboxID.y, 154 );
		Fcancel=1;
		sound_play(sound_get("jingle"));
	}
}


if my_hitboxID.attack == AT_BAIR {
	if my_hitboxID.hbox_num == 1{
		spawn_hit_fx( my_hitboxID.x , my_hitboxID.y, 154 );
	}
}
