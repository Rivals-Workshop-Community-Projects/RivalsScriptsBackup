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

if my_hitboxID.attack != AT_JAB and my_hitboxID.type != 2{
	if (instance_exists(obj_article2)){
	    with(obj_article2){
	    	if (("pen_c4_charged" in self) and (state != 0 and state != 7 and state != 9) and (player_id == other.id)){
	            state = 9;
	            if state == 9 and state_timer >= 10{
	            	state_timer = 10;
	            } else {
	            	state_timer = 0;
	            }
	    	}
	    }
	}
}

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
			prat_land_time = 10 + point_distance(x, y, hit_player_obj.x, hit_player_obj.y);
		}
		break;
}
if my_hitboxID.type == 1 and penny_install{
	sound_play(asset_get("sfx_ell_cooldown"));
	penny_install = false;
}