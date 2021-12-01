//hitbox_update

if attack == AT_NSPECIAL {
	if hitbox_timer == 60 {
		spawn_hit_fx(x, y, 302);
	}
	if hitbox_timer == 61 && !was_parried {			
		with player_id sound_play(sound_get("pokeball"));
	}
}


if attack == AT_DSPECIAL && hbox_num == 1 {
	if hitbox_timer == length && !activetv {
		spawn_hit_fx(x, y, 13);
	}
	
	if free {
	vsp += .7;
	}
	
	if vsp > 23 {
		hitbox_timer = length;
		spawn_hit_fx(x, y, 13);
	}	
	
	if in_hitpause {
		hitstop--;
	}
	if in_hitpause && hitstop == 0 {
		in_hitpause = false;
		hsp = old_hsp;
		vsp = old_vsp;
	}
	
	if !free || vsp > 11 {
		image_xscale = 36/200;
		image_yscale = 26/200;
	}
	
	if activetv {
		with player_id other.sprite_index = sprite_get("tv2");
		
		if hitbox_timer == length {
			with player_id create_hitbox(AT_DSPECIAL, 2, other.x, other.y-8);
			spawn_hit_fx(x,y, 157);
			sound_play(asset_get("sfx_absa_kickhit"));
			player_id.move_cooldown[AT_DSPECIAL] = 100;	
		}
	}

	with (asset_get("pHitBox")) {
			if (player_id == other.player_id && place_meeting(x,y,other.id) && !player_id.has_hit && !other.activetv) {			
				sound_play(asset_get("sfx_blow_medium1"), false, noone, 1, 0.9);
				other.hitbox_timer -= 15;
				other.hitstop = hitpause;
				other.in_hitpause = 1;
				player_id.old_vsp = player_id.vsp;	
				player_id.old_hsp = player_id.hsp;
				player_id.has_hit = 1;
				player_id.hitpause = 1;
				player_id.hitstop = hitpause;
				player_id.hitstop_full = 7;					
				spawn_hit_fx(other.x, other.y, 304);
				
				if (attack == AT_JAB || attack == AT_DATTACK || attack == AT_NAIR || attack == AT_FAIR || attack == AT_FTILT || attack == AT_FSTRONG || attack == AT_FSPECIAL) {
					other.old_vsp = -2-kb_value;
					other.old_hsp = (2+kb_value) * (spr_dir);
				}
			
				if (attack == AT_BAIR) {
					other.old_vsp = -2-kb_value;
					other.old_hsp = -(2+kb_value) * (spr_dir);
				}

				if (attack == AT_NSPECIAL) {
					other.old_vsp = -2-kb_value;
					other.old_hsp = (1+kb_value) * (spr_dir);
					hsp = -2*spr_dir;
					vsp = -7;
				}
				
				if (attack == AT_DTILT || attack == AT_DSTRONG || attack == AT_DAIR) {
					other.old_vsp = -2-kb_value;
					other.old_hsp = (1+kb_value) * (spr_dir);
				}
				
				if (attack == AT_UAIR || attack == AT_USTRONG || attack == AT_UTILT) {
					other.old_vsp = -5-kb_value;
					other.old_hsp = 1 * (spr_dir);
				}
			}
	}
}