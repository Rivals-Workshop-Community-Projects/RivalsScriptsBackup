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
	case AT_FSTRONG_2:
	case AT_DSTRONG_2:
	case AT_USTRONG_2:
		penny_install = false;
		break;
}