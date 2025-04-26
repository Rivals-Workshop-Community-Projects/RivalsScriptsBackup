
if (my_hitboxID.attack==AT_FTILT){
	if (my_hitboxID.hbox_num==3){
		sound_play(asset_get("sfx_may_arc_hit"),false,noone,0.8,1.3);
		sound_play(asset_get("sfx_oly_taunt"),false,noone,0.7,1.5);
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, 109 )
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, 113 )
	}
}

if (my_hitboxID.attack==AT_DSTRONG){
	if (my_hitboxID.hbox_num==2){
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, 304 )
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, ironhead_hfx_1 )
		//sound_play(sound_get("iron_3"));
	}
}
if (my_hitboxID.attack==AT_USTRONG){
	sound_play(sound_get("iron_3"));
}
if (my_hitboxID.attack==AT_DSPECIAL){
	if (my_hitboxID.hbox_num==1||my_hitboxID.hbox_num==3){shake_camera( 6, 5 );}
	if (my_hitboxID.hbox_num==2||my_hitboxID.hbox_num==4){shake_camera( 8, 9 );}
}

var atk = my_hitboxID.attack 
var hbox = my_hitboxID.hbox_num

if atk == AT_DTILT && hbox != 2 {
    hit_player_obj.x = lerp(floor(hit_player_obj.x), x+20 * spr_dir, .5)
  //  hit_player_obj.y = lerp(floor(hit_player_obj.y), y-5, .2)

}
//dattack fake hit to disable di
if (my_hitboxID.attack==AT_DATTACK && my_hitboxID.hbox_num==1){
	set_num_hitboxes(AT_DATTACK, 3);
}