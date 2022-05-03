//article2_update

// Aerial State

switch (state) {
	case 0:
	// Sprite / Animations
	new_sprite = sprite_get("pipis");
	anim_type = 0;
	
	// Movement
	
	vsp += 0.3;
	
	if(free == false) { // Checks if grounded to cause object to bounce
		
		if (Pipis_VspStorage > 8) {
			vsp = -8;
		} else if (Pipis_VspStorage < 6) {
			vsp = -6;
		} else {
			vsp = Pipis_VspStorage * -1;
		}
		
		
	} else {
		Pipis_VspStorage = vsp;
	}
	
	if (hit_wall == true) {
		hsp = Pipis_HspStorage * -1;
	} else {
		Pipis_HspStorage = hsp;
	}
	
	
	
	if (hsp < 0) {
		Pipis_SprDir = 1;
		Pipis_Angle = 180;
	} else {
		Pipis_SprDir = -1;
		Pipis_Angle = 0;
	}
	
	// Determining LD
	
	
	
	// Hitbox Interactions
	/* Description
	
	When hit by an attack, the Pipis explodes into 5 small Spamton Heads, which are shot out based on the launch direction of the hitbox that activated the Pipis.
	If hit by an opponent then the heads will be able to hurt Spamton Neo.
	If hit by Spamton Neo's FSpecial, the heads will glow green and inflict 1 stack of Strings
	
	*/
	
	if (state_timer > 1) {
		
		// Explosion State
		with (oPlayer) {
				
			if (player != other.player_id.player) {
				other.Pipis_EnemyID = self.id; // Gets the ID of opponents to use for determining if they are near for Pipis explosion
				other.Pipis_EnemyX = self.x;
				other.Pipis_EnemyY = self.y - self.char_height / 2;
			}
			
			if (point_distance(other.x,other.y, other.Pipis_EnemyX, other.Pipis_EnemyY) <= 50 && other.Pipis_EnemyID.state != PS_AIR_DODGE && other.Pipis_EnemyID.state != PS_ROLL_BACKWARD && other.Pipis_EnemyID.state != PS_ROLL_FORWARD && other.Pipis_EnemyID.state != PS_TECH_GROUND && other.Pipis_EnemyID.state != PS_TECH_FORWARD && other.Pipis_EnemyID.state != PS_TECH_BACKWARD && other.Pipis_EnemyID.state != PS_WALL_TECH && other.Pipis_EnemyID.state != PS_DEAD && other.Pipis_EnemyID.state != PS_RESPAWN && other.Pipis_EnemyID.initial_invince == false && other.Pipis_EnemyID.invincible == false) { // When hitting an opponent
				other.Pipis_ShakeTime = 9; // Pipis hitpause
				other.Pipis_Bonk = true; // Creates a hitbox in Hit State if true
				other.player_id.SpamNeoPipisBonk = true;
				other.Pipis_AttackerX = other.x;
				other.Pipis_AttackerY = other.y;
				other.state_timer = 0;
				other.state = 21; // Hit State
			}
		}
		
		// Alter State When Hit
		with (pHitBox) {
			
			if place_meeting(x,y,other.id) { // Checks if the Pipis is touching a hitbox
				
				if (type != 2 || (plasma_safe == true && damage > 1 && effect != 9)) { // Makes sure that no true projectiles, repeat hits, or polite hitboxes will activate the Pipis

					// Creating the visuals of the hitbox that activated the attack
					sound_play(sound_effect);
					spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
					
					// Get Angle
					
					switch (hit_flipper) {
						case 1:
						other.Pipis_Angle = 90;
						break;
						
						case 2:
						other.Pipis_Angle = 90;
						break;
						
						case 8:
						other.Pipis_Angle = 90;
						break;
						
						case 9:
						other.Pipis_Angle = 90;
						break;
						
						default:
						
						other.Pipis_Angle = get_hitbox_angle(self); // Gets the angle that the hitbox launches at
						
						break;
					}
					
					// Hitbox is owned by Spamton Neo or not
					if (player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player)) { 
						other.Pipis_Agro = true; // Controlled by Enemy Player
						other.player_id.SpamNeoPipisBonk = true;
						other.Pipis_EnemyID = player_id;
						other.Pipis_EnemyPlayer = player;
						other.Pipis_SprDir = other.player_id.spr_dir; // Direction the player is facing for proper hitboxes
					} else {
						other.Pipis_Agro = false; // Controlled by Spamton Neo OR a team member
						other.player_id.SpamNeoPipisBonk = false;
						other.Pipis_SprDir = player_id.spr_dir; // Direction the player is facing for proper hitboxes
						other.Pipis_hitboxAtk = attack; // Gets the attack type
					}
					
					// Hit State Requirements
					other.Pipis_AttackerX = other.x;
					other.Pipis_AttackerY = other.y;
					other.Pipis_AttackerVsp = other.vsp;
					other.Pipis_AttackerHsp = other.hsp;
					
					other.Pipis_ShakeTime = 9; // Pipis hitpause
					other.Pipis_Bonk = false; // Creates a hitbox in Hit State if true
					
					other.state_timer = 0;
					other.state = 21;
					
				}
	    	}
		}
	}
	
	break;
	
	case 21:
    
    if (Pipis_Bonk == false) {
	    if (Pipis_Agro == true) {
			Pipis_EnemyID.hitpause = true;
			Pipis_EnemyID.hitstop = 8;
			Pipis_EnemyID.old_hsp = Pipis_EnemyID.hsp; //set old_hsp and old_vsp to not ruin player flow
			Pipis_EnemyID.old_vsp = Pipis_EnemyID.vsp;
			Pipis_EnemyID.has_hit = true; //tick the has_hit flag like vanilla articles that can be hit
			
		} else {
			player_id.hitpause = true;
			player_id.hitstop = 8;
			player_id.old_hsp = player_id.hsp; //set old_hsp and old_vsp to not ruin player flow
			player_id.old_vsp = player_id.vsp;
			player_id.has_hit = true; //tick the has_hit flag like vanilla articles that can be hit
		}
		
    } else {
    	create_hitbox(AT_NSPECIAL, 1, x, y);
    }
	
	sound_play(asset_get("sfx_boss_fireball"));
	sound_play(sound_get("pipis_dies"));
	
	state_timer = 0;
	state = 22; // Hitpause State
	break;
	
	case 22:
	x = Pipis_AttackerX + random_func(10, 20, true ) - 10;
	y = Pipis_AttackerY + random_func(10, 20, true ) - 10;
	Pipis_ShakeTime -= 1;
	
	if (Pipis_ShakeTime <= 0) { // Hitpause is over
		x = Pipis_AttackerX;
		y = Pipis_AttackerY;
		
		player_id.SpamNeoPipisSound = false;

		switch (Pipis_hitboxAtk) {
			case AT_FSPECIAL:
			
			if (player_id.spr_dir == 1) {
				Pipis_Angle = 0;
			} else {
				Pipis_Angle = 180;
			}
			
			PipisGreen = true;
			
			break;
			
			case AT_DAIR:
			
			if (player_id.spr_dir == 1) {
				Pipis_Angle = 290;
			} else {
				Pipis_Angle = 250;
			}
			
			break;
			
			case AT_NAIR:
			
			Pipis_Angle = 90;
			
			break;
		}
		
		state_timer = 0;
		state = 23; // Explode State
	}
	
	break;
	
	
	case 23:
	
	// Creating the Spamton Heads
	
	if (Pipis_Agro == false) {
		
		if (PipisGreen == false) {
		
			// Head 1
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle));
			}
			create_hitbox(AT_NSPECIAL, 2, x, y);
		    
			// Head 2
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle + 22.5) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle + 22.5));
			}
			create_hitbox(AT_NSPECIAL, 2, x, y);
		    
			// Head 3
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle - 22.5) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle - 22.5));
			}
			create_hitbox(AT_NSPECIAL, 2, x, y);
			
			// Head 4
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle + 45) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle + 45));
			}
			create_hitbox(AT_NSPECIAL, 2, x, y);
			
			// Head 3
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle -45) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle -45));
			}
			create_hitbox(AT_NSPECIAL, 2, x, y);
		
		} else {
			
			// Head 1
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle));
			}
			create_hitbox(AT_NSPECIAL, 4, x, y);
		    
			// Head 2
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle + 22.5) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle + 22.5));
			}
			create_hitbox(AT_NSPECIAL, 4, x, y);
		    
			// Head 3
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle - 22.5) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle - 22.5));
			}
			create_hitbox(AT_NSPECIAL, 4, x, y);
			
			// Head 4
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle + 45) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle + 45));
			}
			create_hitbox(AT_NSPECIAL, 4, x, y);
			
			// Head 3
			with (player_id) {
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle -45) * other.player_id.spr_dir);
				set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle -45));
			}
			create_hitbox(AT_NSPECIAL, 4, x, y);
			
		}
		
	} else {
	
		// Head 1
		with (player_id) {
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle) * other.player_id.spr_dir);
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle));
		}
		create_hitbox(AT_NSPECIAL, 3, x, y);
	    
		// Head 2
		with (player_id) {
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle + 22.5) * other.player_id.spr_dir);
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle + 22.5));
		}
		create_hitbox(AT_NSPECIAL, 3, x, y);
	    
		// Head 3
		with (player_id) {
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle - 22.5) * other.player_id.spr_dir);
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle - 22.5));
		}
		create_hitbox(AT_NSPECIAL, 3, x, y);
		
		// Head 4
		with (player_id) {
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 10.5 * dcos(other.Pipis_Angle + 45) * other.player_id.spr_dir);
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -10.5 * dsin(other.Pipis_Angle + 45));
		}
		create_hitbox(AT_NSPECIAL, 3, x, y);
		
		// Head 3
		with (player_id) {
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 12 * dcos(other.Pipis_Angle -45) * other.player_id.spr_dir);
			set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -12 * dsin(other.Pipis_Angle -45));
		}
		create_hitbox(AT_NSPECIAL, 3, x, y);
		
	}
	player_id.SpamNeoPipisActive = false;
	player_id.SpamNeoPipisCooldown = 60;
	instance_destroy();
	
	break;
	
	default:
	
	break;
}

// Destroys If Off Playable Area

if (y > room_height|| x > room_width || x < 0) {
	player_id.SpamNeoPipisActive = false;
	player_id.SpamNeoPipisCooldown = 60;
	instance_destroy();
}

player_id.SpamNeoPipisAngle = Pipis_Angle;

state_timer++;

// Amnimating

if (anim_timer == 5 && anim_type == 0) { // Normal
	image_index++;
	anim_timer = 0;
}

if (sprite_index != new_sprite) {
	sprite_index = new_sprite;
	image_index = 0;
}

if (state != 11 && state != 12) { // No animation changes while in hitpause
	anim_timer++;
}