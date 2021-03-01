

if attack == AT_NSPECIAL_2 {
	player_id.move_cooldown[AT_NSPECIAL_2] = 2
	player_id.selfstab_hbox = id
	oldplayer = player_id
}

if attack == AT_DAIR && hbox_num == 1 {
	spawn_hit_fx(x, y, player_id.hit_sprites[4])
}

if attack == AT_DSPECIAL && hbox_num == 1{
depth = player_id.depth+1
if player_id.free {y -= 6}
}

if attack == AT_DTILT && hbox_num == 1 {
	
	//for (x = player_id.x; abs(x - player_id.x) < get_hitbox_value(AT_DTILT, 1, HG_HITBOX_X); x += 10) {
		//if position_meeting(x,bbox_bottom+1,asset_get("par_block")) sound_play(asset_get("mfx_star"));

	//}
	//var maxlen = get_hitbox_value(AT_DTILT, 1, HG_HITBOX_X);
	var maxlen = 190;
	var of = 26*player_id.spr_dir
	
//	if player_id.normal_charge > 0 maxlen += 80;
	
	
	
	for (x = player_id.x; abs(x - player_id.x) < maxlen; x += player_id.spr_dir*10) {
	
		if !position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough")){
			repeat(10){
				x -= player_id.spr_dir;
				if position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) or position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough")) break;
			}
			break;
		}

	}	

}

if attack == AT_FSPECIAL {
	player_id.fspecial_box = id;
	x = player_id.fspecial_nodex
	y = player_id.fspecial_nodey
}
