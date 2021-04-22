obj_timer++;
hit_lockout--;

vsp = round(fake_vsp);
hsp = round(fake_hsp);

canDetonate = 1;

if (size == 0) {
	sprite_index = sprite_get("crystalexp_small");
	mask_index = sprite_get("crystal_mask");
} else {
	sprite_index = sprite_get("crystalexp_large");
	mask_index = sprite_get("crystal_mask_large");
}

if (y > 1100 || x < 0 || x > room_width) {
	player_id.crystalOut = 0;
	instance_destroy(hb);
	instance_destroy();
}

if (article_mode == 0) {
	if (free) {
		if (fake_vsp < 10) {
			fake_vsp += 0.4;
		} else {
			fake_vsp += 0.65;	
		}
	} else {
	
	}
	
	if (place_meeting(x, y + 10, asset_get("jumpthrough_32_obj")) || place_meeting(x, y + 10, asset_get("obj_stage_article_platform"))) {
		
	} else {
		if (place_meeting(x, y + 10, asset_get("par_jumpthrough"))) {
			decay_timer = 0;
			free = false;
			print("ball is on plat");
			onPlat = true;
		} else {
			onPlat = false;
		}
	}
	
	if (fake_hsp > 1) {
		fake_hsp -= 0.15;
	}
	if (fake_hsp < -1) {
		fake_hsp += 0.15;
	}

	if obj_timer <= 1 {
		hb = create_hitbox(AT_NSPECIAL, 2, round(x + fake_hsp), round(y + fake_vsp));
	} else if (instance_exists(hb)) {
		hb.x = x + fake_hsp;
		hb.y = y + fake_vsp;
		if (hb.player != player) {canDetonate = 0;}
	}

	if (!instance_exists(hb)) {
		if (obj_timer > hitbox_lifetime && obj_timer - 2 < hitbox_lifetime) {

		} else {
			should_spawn_hb = 0;
		}
	}

	if (!free && obj_timer > 10) {
		decay_timer++;		
		fake_hsp *= 0.9;
		if (onPlat == false) {
			if (instance_exists(hb)) {instance_destroy(hb);}
		}
		
		if (decay_timer < 2) {
			fake_vsp = -6 + (4 * decay_timer);
		} else {
			if (decay_timer % 5 < 2) { 
				if (size == 0) {image_index = 11;} 
				else {image_index = 12;}
			} else {
				image_index = 0;
			}
		}	
		
		if (decay_timer > 80) {
			player_id.crystalOut = 0;
			instance_destroy(hb);
			instance_destroy();
		}
	}
	
	
	with (asset_get("pHitBox")){
		if (place_meeting(x,y,other.id) && (other.player_id != player_id || attack != AT_NSPECIAL) && other.hit_lockout < 0){
			player_id.old_vsp = player_id.vsp;
			player_id.old_hsp = player_id.hsp;
			//maintains the attacking player's velocity through hitpause
			
			other.hitstop = 5; //Article freeze frames
			if (type == 1) {
				player_id.hitpause = true;   //Player freeze frames
				player_id.hitstop = 5;      //Player freeze frames, cont.
			}
			player_id.has_hit = true;    //Does not incur whifflag on the player that hit the crystal
			other.hitbox_hit = self;
			sound_play(other.hitbox_hit.sound_effect);
			
			other.hitMode = 1; //telling the article it's time to take knockback
			other.hitAngle = kb_angle; //storing data of the attack that was hit with
			other.hitForce = kb_value; //''
			other.hitDir = spr_dir; //''

			other.hit_lockout = 10; //prevents the attacker from hitting again in hitpause
			
			other.decay_timer = 0; //resets the despawn timer when hit
			other.image_index = 0; //''
			other.free = true;
			
			other.hitPlayer = player;
			
			if (player_id.nateFromPowervale == 1 && attack == AT_NSPECIAL) {
				if (x < other.x) {
					other.hitAngle = 70;
				} else {
					other.hitAngle = 110;
				}
			}
			
			if (other.player_id != player_id) {
				print_debug("hit by another player");
				hitByOpponent = 1;
			} else if (true) {
				if (attack == AT_FAIR) {
					if (player_id.old_vsp > -5) {
						player_id.old_vsp = -5;
					}
					if (abs(player_id.old_hsp) > 4) {
						player_id.old_hsp *= 0.8;
					}
				}
				
				if (attack == AT_BAIR) {
					player_id.old_hsp += 7 * spr_dir;
					if (player_id.old_vsp > -4) {
						player_id.old_vsp = -4;
					}
					player_id.old_vsp -= 2;
				}

				if (attack == AT_DAIR) {
					spawn_hit_fx( x, y+15, 14 );
					if (hbox_num == 1) {
						if (player_id.old_vsp > -12) {
							player_id.old_vsp = -12;
						}
						if (abs(player_id.old_hsp) > 3) {
							player_id.old_hsp *= 0.6;
						}
					} else {
						if (player_id.old_vsp > -8) {
							player_id.old_vsp = -8;
						}
						if (abs(player_id.old_hsp) > 4) {
							player_id.old_hsp *= 0.9;
						}
					}
				}
			} else if (attack == AT_FSPECIAL) {
				player_id.flash.hitCrystal = 1;		
				other.hit_lockout = 4; //prevents the attacker from hitting again in hitpause			
				other.hitstop = 20; //Article freeze frames	
				other.hitForce *= 1.5;
			}		
		}
	}
	
	if (hitMode == 1) {
		if (hitAngle == 361) {hitAngle = 45;}
		if (hitAngle < 46 && hitAngle > 0) {hitAngle -= 5;}
		if (hitAngle < 41 && hitAngle > 0) {hitAngle -= 5;}
		
		if (hitAngle > 131 && hitAngle < 180) {hitAngle += 5;}
		if (hitAngle > 136 && hitAngle < 180) {hitAngle += 5;}
		if (hitAngle > 75 && hitAngle < 90) {hitAngle += 5;}
		if (hitAngle > 90 && hitAngle < 105) {hitAngle -= 5;}
		
		print_debug("launching at angle " + string(hitAngle));
		fake_vsp = -1 * (2 + (hitForce * 1.6)) * dsin(hitAngle);
		fake_hsp = 1.2 * (2 + (hitForce * 1.6)) * (dcos(hitAngle)) * hitDir;
		hitMode = 0;
		instance_destroy(hb);
		hb = create_hitbox(AT_NSPECIAL, 1, round(x + fake_hsp), round(y + fake_vsp));
		hb.player = hitPlayer;
	}
	vsp = round(fake_vsp);
	hsp = round(fake_hsp);
} else if (article_mode == 1) {
	if (empowered == 1) {
		if (obj_timer % 2 != 0) {
			obj_timer++;
		}
	}
	if (obj_timer < 3) {
		instance_destroy(hb);
	}

	fake_vsp = 0;
	fake_hsp = 0;
	image_index = obj_timer / 2;
	if (obj_timer > 22) {
		player_id.crystalOut = 0;
		instance_destroy(hb);
		instance_destroy();
	}
	if (obj_timer == 4) {
		sound_play(asset_get("sfx_icehit_medium1"));
	}
	if (obj_timer == 12) {
		sound_play(asset_get("sfx_ice_shatter_big"));
	}
	if (obj_timer == 16) {
		if (size == 0) {hb = create_hitbox(AT_NSPECIAL, 4, x, y);}
		else {hb = create_hitbox(AT_NSPECIAL, 5, x, y);}
	}
	if (obj_timer < 10) {
		obj_timer+=0.5;
	}
	can_be_grounded = false;
	ignores_walls = true;
}