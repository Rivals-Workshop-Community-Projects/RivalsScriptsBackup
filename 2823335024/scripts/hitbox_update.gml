//hitbox_update

if (attack==AT_USTRONG){
if (hbox_num == 1){
	vsp=vsp+0.3
	if (vsp>=4){
		spawn_hit_fx( x, y, 143 )
		with (player_id){ create_hitbox( AT_USTRONG, 2, other.x, other.y ) }
		destroyed = true;
		sound_stop(sound_get("explosion"))
		sound_play(sound_get("explosion"))
	}
	if (player_id.joycon_drift=="on"){
		
		if (player_id.joycon_drift_dir == "left")
			hsp = -3;
		else
			hsp = 3;
	}
}
}

if (attack==AT_TAUNT){
	if (!free){
		spawn_hit_fx( x, y+48, 153 )
		destroyed = true;
		sound_play(asset_get("sfx_shovel_hit_med1"))
		if (player_id.runeL){
			var hb_tmp = create_hitbox( AT_USTRONG, 1, x, y-40 )
			hb_tmp.hsp = 2*spr_dir
			hb_tmp.vsp = -7.5
			var hb_tmp = create_hitbox( AT_USTRONG, 1, x, y-40 )
			hb_tmp.hsp = 3*spr_dir
			hb_tmp.vsp = -5.5
		}
	}
	if (hitbox_timer==length-1){
		spawn_hit_fx( x, y, 13 )
		destroyed = true;
		sound_play(asset_get("sfx_ell_small_missile_ground"),false,noone,0.5)
	}
}

if (attack==AT_NSPECIAL){
	if (!free||hitbox_timer==length-1){
		if (hbox_num==1){
			spawn_hit_fx( x, y, 13 )
			sound_play(asset_get("sfx_ell_small_missile_ground"))
		}
		if (hbox_num==2){
			spawn_hit_fx( x, y, 153 )
			sound_play(sound_get("crack"),false,noone,0.5)
		}
		destroyed = true;
	}
}




//the forbidden no-strap zone

//switch (attack){
//	case AT_FTILT:
//	case AT_DTILT:
//	case AT_UTILT:
//	case AT_DATTACK:
//	case AT_NAIR:
//	case AT_DAIR:
//	case AT_UAIR:
//	case AT_BAIR:
//		if (proj_angle!=0){
//			if (!free||hitbox_timer==length-1){
//				spawn_hit_fx( x, y, 136 )
//				sound_play(sound_get("hit_bowling_weak"),false,noone,0.3,0.8)
//				destroyed = true;
//			}
//		}
//		break;
//}









