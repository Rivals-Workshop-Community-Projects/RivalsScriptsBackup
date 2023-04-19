//
if (my_hitboxID.orig_player == player) {
	if (attack != AT_FSPECIAL && fspecial_enemy != -4) {
		fspecial_enemy.can_tech = true;
		fspecial_enemy.can_wall_tech = true;
		fspecial_enemy = -4;
	}
	switch(my_hitboxID.attack) {
		case AT_UTILT:
			if (my_hitboxID.hbox_num == 1 && state_cat != SC_HITSTUN && hit_player_obj.state_cat == SC_HITSTUN) {
				grabbed_player = hit_player_obj;
				try_grab_dumb();
			} else {
				grabbed_player = -4;
			}
			/*
			switch(my_hitboxID.hbox_num) {
				case 1:
					max_reps += 10;
				break;
				case 2:
					max_reps += 5;
				break;
				default:
				break;
			}
			*/
		break;
		case AT_NSPECIAL:
			if (my_hitboxID.hbox_num == 1) {
				my_hitboxID.grounds = 0;
				my_hitboxID.hsp = 0;
				my_hitboxID.vsp = -4;
				my_hitboxID.grav = my_hitboxID.unactive_grav;
				my_hitboxID.hitbox_timer = 0;
				my_hitboxID.active = false;
				for (i = 0; i < 20; i++) {
					my_hitboxID.can_hit[i] = 0;
				}
				if (my_hitboxID.dumb_hit) {
					spawn_hit_fx((my_hitboxID.x + hit_player_obj.x) / 2, (my_hitboxID.y + hit_player_obj.y) / 2, 306);
				}
				my_hitboxID.dumb_hit = true;
			}
		break;
		case AT_FSPECIAL:
			if (hit_player_obj.state == PS_HITSTUN && state_cat != SC_HITSTUN) {
				fspecial_enemy = hit_player_obj;	
				try_grab_dumb();				
				destroy_hitboxes();
				attack_end();				
				set_attack(AT_FSPECIAL_2);
				djumps = 0;
			}
			if (my_hitboxID.hbox_num == 2 && hit_player_obj.state_cat == SC_HITSTUN) {
				spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, my_hitboxID.hit_effect);
				sound_play(asset_get("sfx_clairen_nspecial_grab_success"));
				take_damage(hit_player_obj.player, player, 3);
			}
		break;
		case AT_FSTRONG:
			if (my_hitboxID.hbox_num == 1) {
				old_hsp = spr_dir * -2;
				old_vsp = -9;
			}
		break;
		case AT_DTHROW:
			/*
			if (!free) {
				hit_player_obj.can_bounce = false;
			}
			*/
		break;
		default:
			max_reps += 1;
		break;
	}
}

//print(max_reps)

#define try_grab_dumb() {
	with (pHitBox) { //Projectile Grab Code
		if (orig_player == player && player_id == other && type == 1) {
			with pHitBox {
				if (place_meeting(x, y, other) && type == 2 && "chad_dumb" in self) {
					if !(player_id.url == CH_KRAGG || ("chad_cannot_grab" in self)) {
						other.player_id.fspecial_proj = self;
						spr_dir = other.player_id.spr_dir;
						player = other.player;
					}
				}
			}
		}
	}
}