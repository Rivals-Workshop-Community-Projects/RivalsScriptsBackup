if (attack == AT_DSPECIAL){
	proj_angle += 1.2 * -spr_dir;
	var flash_time = 70;
	
	if (hitbox_timer > length - 60 && hsp == 0){
		visible = !(flash_time && hitbox_timer % 10 < 5);
	}
	
	if (hitbox_timer == length - 1){
		destroyed = true;
	}
	
	with (oPlayer){
		if (player != other.player){
			if (place_meeting (x, y, other)){
				if (state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD){
					
					with (other){
						sound_play(sound_get("go"));
					}
					
					other.destroyed = true;
					
				}
			}
		}
	}
	
	with (pHitBox){
		if (player == other.player){
			if (attack == AT_NSPECIAL){
				if (hbox_num == 1){
					if (place_meeting(x, y, other)){
						with (other){
							player_id.has_hit = true;
							if (hsp == 0){
								spawn_hit_fx( x + 35*spr_dir, y - 5, 192 );
								sound_play(asset_get("sfx_blow_heavy1"));
							}
							hsp = 12*spr_dir;
							vsp = -5;
							spr_dir = player_id.spr_dir;
							grav = .4;
							kb_angle = 45;
							kb_value = 8;
							kb_scale = .9;
							sound_effect = asset_get("sfx_blow_heavy2");
							hit_effect = 21;
							proj_break = 0;
							damage = 8;
							hitbox_timer = 120;
							grounds = 2;
							walls = 2;
							hitstun_factor = 1;
						}
					}
				}
			}
		}
	}
}