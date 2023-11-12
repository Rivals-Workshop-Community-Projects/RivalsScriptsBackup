//hitbox_update

if (attack == AT_USPECIAL) {
	if hbox_num == 4 {
	vsp = 0;
	}	
}

if (attack == AT_NSPECIAL) {
	if hbox_num == 1 {
		if !boomerstop && !was_parried {
			hsp = clamp(hsp, -20, 20);
			hsp -= .5*spr_dir;
			vsp = clamp(vsp, -4, 4);
		}

		with player_id if special_down && (other.hsp>=-0.2 && other.hsp<=0.2) && !other.was_parried {
		other.boomerstop = 1;
		other.hsp = 0;
		other.vsp = 0;
		other.hit_flipper = 3;
		other.kb_value = 4;
		other.kb_scale = .05;
		other.kb_angle = 70;
		move_cooldown[AT_NSPECIAL] = 90;
		

			if (get_gameplay_time() mod 8 == 0) {
				spawn_hit_fx(other.x, other.y-2, slashyfaster);
			}
			
		} else {
		other.boomerstop = 0;
		other.boomercharge = 0;
		}
		
		if hitbox_timer == 1 || hitbox_timer mod 4 == 0 {
				spawn_hit_fx(x+8*spr_dir, y-0, player_id.slashyAfter2);
		}
		
		if hitbox_timer == 1 || hitbox_timer mod 6 == 0 {
				spawn_hit_fx(x-8*spr_dir, y+0, player_id.slashyAfter2);
		}
		
		if boomerstop && 50 > boomercharge {
		hitbox_timer = 20;
		}	
		
		if boomerstop && 50 >= boomercharge {
		boomercharge++;
		}
		
		if was_parried {
		hsp = sign(x - player_id.x) * -12;
		vsp = sign(y - player_id.y+30) * -12;
		}
	
		with player_id if other.boomercharge == 50 {
		create_hitbox(AT_NSPECIAL, 2, other.x+2*other.spr_dir, other.y-8);
		boomerstop = 0;
		sound_play(sound_get("sfx_charge_ting"));
		sound_play(sound_get("sfx_cutter_spin3"));
		spawn_hit_fx(other.x,other.y,306);
		other.hitbox_timer = other.length-2;
		}
		
		with player_id if !other.was_parried && other.boomerstop == 0 {
			if up_down {
			other.vsp -= .3;
			}
			if down_down {
			other.vsp += .3;
			}		
		}	else {
			other.vsp = 0;		
		}
		
		if hittimer > 0 && !in_hitpause {
		hittimer--;
		}
		
		if hittimer == 1 && !was_parried {
		for(var i = 0; i < 20; i++) can_hit[i] = true;
		}
		
		if place_meeting(x+26*spr_dir,y,player_id) && !was_parried && hitbox_timer > 20 && !(player_id.state == PS_AIR_DODGE || player_id.state == PS_ROLL_BACKWARD || player_id.state == PS_ROLL_FORWARD) {
		hitbox_timer = 999;
		with player_id {
			spawn_hit_fx(x-14*spr_dir,y-38,14);
			sound_stop(sound_get("sfx_cutter_spin4"));
			sound_play(sound_get("sfx_cutter_catch"));
			move_cooldown[AT_NSPECIAL] = 5;	

			if (attack == AT_FSPECIAL && (window == 4 || window == 5 || window == 6)) {
				destroy_hitboxes();
				hitpause = true;
				hitstop = 3;
				old_vsp = -8;
				window = 4;
				window_timer = 3;
			}
			
			if (attack == AT_DSPECIAL && (window == 3 || window == 4 || window == 5 || window == 6)) {
				vsp = -9;
				old_vsp = vsp;
			}
			if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
				attack_end();
				set_attack(AT_NSPECIAL_2);
				}
			}
		
		}
	}
	
	if hbox_num == 2 {
		if hitbox_timer == 4 {
			with player_id create_hitbox(AT_NSPECIAL, 3, other.x, other.y);
		}

		with (asset_get("pHitBox")) {
			if player_id == other.player_id && (attack == AT_NSPECIAL && hbox_num == 3 && was_parried) {
				other.player = player;
				other.was_parried = 1;
			}
			
			if player_id == other.player_id && (attack == AT_NSPECIAL && hbox_num == 1) {
				if was_parried {
					other.player = player;
					other.was_parried = 1;
				}
			}
		}
		
		if hitbox_timer == 1 || hitbox_timer mod 4 == 0 {
				spawn_hit_fx(x-10*spr_dir, y-0, player_id.slashyafter);
		}
		
		if hitbox_timer == 1 || hitbox_timer mod 6 == 0 {
				spawn_hit_fx(x+10*spr_dir, y+0, player_id.slashyafter);
		}
		
		hsp = clamp(hsp, -20, 20);
		if hitbox_timer > 10 {
			hsp -= .45*spr_dir;
		}
		vsp = clamp(vsp, -4.5, 4.5);
		
		with player_id if !other.was_parried && other.boomerstop == 0 {
			if up_down {
			other.vsp -= .4;
			}
			if down_down {
			other.vsp += .4;
			}		
		} else {
			other.boomerstop = 0;
		}
		
		if was_parried {
		hsp = sign(x - player_id.x) * -12;
		vsp = sign(y - player_id.y+30) * -12;
		enemies = 0;
		grounds = 1;
		walls = 1;
		}
		
		if hittimer > .9 && !in_hitpause {
		hittimer--;
		}
		
		if hittimer == 1 {
		for(var i = 0; i < 20; i++) can_hit[i] = true;
		}
		
		if place_meeting(x+26*spr_dir,y,player_id) && !was_parried && hitbox_timer > 20 && !(player_id.state == PS_AIR_DODGE || player_id.state == PS_ROLL_BACKWARD || player_id.state == PS_ROLL_FORWARD) {
		hitbox_timer = 999;
		with player_id {
			spawn_hit_fx(x-14*spr_dir,y-38,14);
			sound_stop(sound_get("sfx_cutter_spin4"));
			sound_play(sound_get("sfx_cutter_catch"));
			move_cooldown[AT_NSPECIAL] = 5;	

			if (attack == AT_FSPECIAL && (window == 4 || window == 5 || window == 6)) {
				destroy_hitboxes();
				hitpause = true;
				hitstop = 5;
				old_vsp = -8;
				window = 4;
				window_timer = 4;
			}
			
			if (attack == AT_DSPECIAL && (window == 3 || window == 4 || window == 5 || window == 6)) {
				vsp = -9;
				old_vsp = vsp;
			}
			if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
				attack_end();
				set_attack(AT_NSPECIAL_2);
				}
			}
		}
	}
}