opponent_strapped = false;
opponentx = 0;
opponenty = 0;

pen_mine_unstable = false;

goboom = false;
boomtimer = 0;

mine_active = 0;
cooldown_mine = 0;

with(mine_player){
	penny_strapped = false;
	strapped_id = -4;
}

with(hit_player_obj){
	penny_is_charged = false;
	// Change it back
	outline_color = [0, 0, 0]
	init_shader();
}

mine_player = noone;

// Check if you used DSpecial
switch(my_hitboxID.attack){
	case AT_DSPECIAL:
		if instance_exists(obj_article2){
			with(obj_article2){
				if "penny_orig_owner" in self{
					vsp = -10;
				}
			}
		}
		break;
	case AT_DSPECIAL_2:
		if !free{
			set_state(PS_PRATLAND);
			prat_land_time = 120;
		}
		break;
}
if my_hitboxID.type == 1{
	sound_play(asset_get("sfx_ell_cooldown"));
	penny_install = false;
}