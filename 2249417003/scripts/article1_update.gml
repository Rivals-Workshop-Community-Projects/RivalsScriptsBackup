





//reset if opponent is KO'd

//state timer
state_timer++;

switch (article_index) {
	case 0: //minigun
	
		//fspecial cooldown
		player_id.move_cooldown[AT_FSPECIAL] = 15;
		
		//check if hit
		if (state < 3) {
			if (player_id.state == PS_RESPAWN) set_article_state(3);
			else {
				var was_hit = false;
				if (was_hit) {
					set_state(3);
				}
			}
		}
		
		//collision fix?

		
		//friction
		if (hsp != 0) {
			hsp = max(abs(hsp) - 0.1, 0) * sign(hsp);
		}
		
		switch (state) {
			
			case 0: //startup
				//make sure ralsei is attacking
				if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) 
				 && (player_id.attack == AT_FSPECIAL || player_id.attack == AT_FSPECIAL_AIR)) {
					
					if (state_timer == 1) {
						ammo = 32;
						ralsei_hsp = 0;
						ralsei_vsp = 0;
						warmup = 0;
						with (player_id) {
							other.rune_velocity = has_rune("D") * 0.25; 
						}
						
						if (player_id.attack == AT_FSPECIAL) {
							sprite_index = sprite_get("fspecial_minigun_ground");
							mask_index = sprite_get("fspecial_minigun_mask"); //sprite_get("fspecial_minigun_ground_startup_mask");
						}
						else {
							sprite_index = sprite_get("fspecial_minigun_air");
							mask_index = sprite_get("fspecial_minigun_mask");
						}
						can_be_grounded = true;
						ignores_walls = false;
						
						minigun_sfx = noone;
					}
					
					else {
					
						image_index = min(player_id.image_index - 3 + floor(warmup / 5), 9);
						//if image index reaches 7, enter 'carried' state
						if (image_index >= 6) {
							if (warmup == 0) {
								sound_play(sound_get("minigun_warmup"));
							}
							warmup++;
							if (warmup > 12) {
								set_article_state(1);
								
							}
						}
					}
					x = player_id.x;
					y = player_id.y;
					hsp = 0;
					vsp = 0;
				}
				else {
					set_article_state(3);
				}
			break;
			
			case 1: //carried by ralsei; shoot
				if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) 
				 && (player_id.attack == AT_FSPECIAL || player_id.attack == AT_FSPECIAL_AIR)) {
					x = player_id.x;
					y = player_id.y;
					hsp = 0;
					if (!player_id.hitpause) {
						ralsei_hsp = player_id.hsp;
						ralsei_vsp = max(player_id.vsp, 0);
					}
					mask_index = sprite_get("fspecial_minigun_mask");
					
					//if (!free) player_id.hsp -= spr_dir * 0.5;
				 }
				else {
					set_article_state(2);
				}
			
			
			
			
			case 2: //not carried by ralsei; shoot
			
				//shooty code
				if (minigun_sfx == noone) {
					minigun_sfx = sound_play(sound_get("minigun_fire_by_soundfx-studio"), true);
				}
				
				image_index = 8 + floor((state_timer / 3) mod 2);

				if (state_timer mod 5 == 0) {
					var new_bullet = create_hitbox(AT_FSPECIAL, 4, round(x + 48 * spr_dir), round(y - 20 + lengthdir_y(5, state_timer * 35)));
					new_bullet.hsp *= sign(new_bullet.hsp) * spr_dir;
					new_bullet.depth = max(new_bullet.depth, depth + 1)
					
					var shell = instance_create(x, y - 20, "obj_article2");
					
					//workaround since article2_init won't work
					shell.player_id = player_id;
					shell.spr_dir = spr_dir;
					
				    shell.sprite_index = player_id.ralsei_default_shell_bounce_spr;
				    shell.bounce_sound = player_id.ralsei_default_shell_bounce_sound;
				    shell.spr_dir = player_id.spr_dir;
				    var num = instance_number(obj_article2);
				    shell.rotation_speed = random_func(num mod 25, 10, 0) * spr_dir;
				    shell.vsp = (vsp * 0.5) -6 + random_func((num + 1) mod 25, 1, 0);
				    shell.hsp = (hsp * 0.75) - (spr_dir * 4) - 1 + random_func((num + 1) mod 25, 2, 0); 
					if (!free || state == 1) shell.bounce_height = y;
					shell.image_index = 2;

					ammo -= 1;
					hsp -= spr_dir + rune_velocity;
					if (ammo <= 0 || y > room_height + 50) set_article_state(3);
				}
				if (state == 2) {
					if (state_timer == 1) {
						mask_index = sprite_get("fspecial_minigun_mask");
						
						//if (player_id.state == PS_JUMPSQUAT) {
						//	player_id.hsp = ralsei_hsp;
						//}
						hsp = ralsei_hsp;
						vsp = ralsei_vsp;
					}
					//gravity
					if (free) vsp += 0.5;
				}
				
			break;
			
			case 3: //hit/expired
				stop_minigun_shoot_sfx();
				image_index = 8;
				if (state_timer >= 60) set_article_state(4);
				//gravity
				if (free) vsp += 0.5;
			break;
			
			case 4: //destroy
				stop_minigun_shoot_sfx();
				destroy = true;
			break;
			
			case 5:
				stop_minigun_shoot_sfx();
				ammo = 0;
				if (floor(state_timer mod 10) / 10 == 0) {
					image_blend = c_red;
				}
				else {
					image_blend = c_white;
				}
				
				if (state_timer >= 30) {
					destroy = true;
					sound_play(sound_get("dr_badexplosion"));
					spawn_hit_fx(x, y, player_id.ralsei_fx_stockexplosion);
					explosion_hbox = create_hitbox(AT_FSPECIAL, 5, x, y - 20);
					explosion_hbox.can_hit_self = true;
				}
			break;
			
			default: //disappear
				destroy = true;
			break;
		
		} //end switch (state) 'create'
		
	break;
	
	case 1: //missile silo
	
		if (state < 2 && ( player_id.attack != AT_USPECIAL_GROUND || (player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) )) {
			set_article_state(2);
		}
	
		switch (state) {
			case 0: //silo spawn
				if (state_timer == 1) {
					sprite_index = sprite_get("uspecial_ground_launcher");
					image_index = 0;
					ammo = 0;
					
				}
				else if state_timer mod 4 == 3 { 
					image_index += 1;
					if (image_index >= 3) set_article_state(1);
				}
			break;
			case 1: //shoot missiles
				switch (state_timer mod 12) {
					case 8:
						image_index++;
						var xx = floor(ammo / 2) * 10 - 10;
						var yy = (ammo mod 2) * 8 - 20;
						var new_bullet = create_hitbox(AT_USPECIAL_GROUND, 1, x - xx * spr_dir, y + yy);// - sin(radtodeg(state_timer * 5)) * 5);
						new_bullet.spr_dir = 1;
						new_bullet.tracking_dir = spr_dir;
						sound_play(sound_get("dr_wing_edit"));
					break;
					case 11:
						image_index++;
						ammo += 1;
						if (ammo == 6) set_article_state(2);
					break;
				}
			break;
			default: //silo despawn
				if (image_index < 3) state_timer = 16;
				switch (state_timer) {
					case 11: image_index = 16; break;
					case 16: image_index = 3; break;
					case 21: image_index = 17; break;
					case 26: visible = false; break;
					case 56: destroy = true; break;
				}
			break;
		}
	
	break;
	
	
	case 2: //dtilt mine
		switch (state) {
			case 0: //spawn
				if (state_timer == 1) {
					sprite_index = sprite_get("dtilt_landmine");
					mask_index = sprite_get("dtilt_landmine_mask2");
					image_index = 0;
					can_be_grounded = true;
					ignores_walls = false;
					hsp = spr_dir * 4;
					vsp = -2;
				}
				//activate when on the ground
				if (!free) {
					hsp = 0;
					vsp = 0;
					set_article_state(1);
					mask_index = sprite_get("dtilt_landmine_mask");
					sound_play(asset_get("sfx_obstacle_hit"), 0, noone, 0.4, 2);
				}
				else {
					hsp *= 0.95;
					vsp += 0.5;
				}
			break;
			
			case 1: //about to prime
				if ((state_timer >= 10 && player_id.state_cat != SC_HITSTUN) || state_timer > 20) {
					set_article_state(2);
				}
			break;
			
			case 2:  //primed
				image_index = 1 - floor((state_timer mod 40) / 20);
				//check for colliding players every other frame
				if (state_timer mod 2 == 1) {
					var primed = 0;
					var this_mine_article = id;
					with (oPlayer) {
						
						if (id == other.player_id || free ) continue;
						switch (state) {
							case PS_TECH_FORWARD:
							case PS_TECH_BACKWARD:
							case PS_ROLL_FORWARD:
							case PS_ROLL_BACKWARD:
								if (place_meeting(x, y, this_mine_article) ) primed = 1;
							break;
							default:
								with (hurtboxID) {
									if (place_meeting(x, y, this_mine_article) ) primed = 1;
								}
							break;
						}
						if (primed) break;
					}
					if (primed) set_article_state(3);
				}
				
				//expire after a set time
				if (state_timer > 480) set_article_state(5);
			break;
			
			case 3: //explode
				image_index = 2 + floor((state_timer mod 10) / 5);
				if (state_timer < 12) {
					if (state_timer mod 6 == 1) sound_play(sound_get("dr_bombfall"));
					break;
				}
				//destroy = true;
				
				//boom	
				//spawn_hitbox
				create_hitbox(AT_DTILT, 2, x, y - 30);
				//spawn_fx
				spawn_hit_fx(x, y, player_id.ralsei_fx_mine_explode)
				//sound
				sound_play(sound_get("dr_bomb"));
				
				//become inactive
				set_article_state(4);
			break;
			case 4: //inactive mine
				if (state_timer == 1) sprite_index = sprite_get("dtilt_landmine_triggered");
				if (state_timer >= 300) set_article_state(5);
			break;
			case 5: //fadeaway
				image_alpha -= 0.05;
				if (image_alpha <= 0) destroy = true;
			break;
		}
	break;
	
	case 3: //uspecial rpg
		//if (state > 0) 
		switch (state) {
			case 0: //spawned or hit by player; wait until falling
				if (state_timer == 1) {
					sprite_index = sprite_get("uspecial_rpg");
					spr_dir *= -1;
					can_be_grounded = true;
					ignores_walls = false;
					free = true;
					was_parried = false;
				}
				image_index = floor(state_timer / 6);
				if (state_timer >= 17) set_article_state(1);
				
			break;
			case 1:  //fall; prime explosion when no longer falling after floor collision; bounce up when touching players
				if (state_timer == 1) {
					image_index = 2;
				}
				//gravity
				vsp += 0.5;
				//prime detonation on ground or player contact
				if (!free || (vsp > 5 && place_meeting(x, y, pHurtBox)) ) {
					set_article_state(2);
					//play sound
					sound_play(sound_get("dr_bombfall"));
					vsp = -5;
					//spawn contact projectile
					create_hitbox(AT_USPECIAL, 4, x, y + 16).spr_dir = spr_dir;
				}
				//failsafe
				else if (state_timer >= 600) {
					set_article_state(2);
				}
			break;
			case 2:  //primed to explode
				image_angle += 3 * spr_dir;
				if (state_timer == 1) {
					image_index = 3;
				}
				//explode after second ground touch or after 3 seconds
				else if (!free || state_timer >= 180 || (vsp > 5 && place_meeting(x, y, pHurtBox))) {
					//spawn_hitbox
					create_hitbox(AT_USPECIAL, 3, x, y + 10).spr_dir = spr_dir;
					//spawn_fx
					spawn_hit_fx(x, y + 34, player_id.ralsei_fx_mine_explode)
					//sound
					sound_play(sound_get("dr_bomb"));
					//destroy
					destroy = true;
				}
				//gravity
				vsp += 0.5;
			break;
			case 3: //parried
				spawn_hit_fx(x, y, player_id.ralsei_fx_nade_explode)
				destroy = true;
			break;
		}
		oldhsp = hsp; //save variable for bouncing off walls
	break;
	
	case 4: //utilt flamethrower
		if (state < 2) {
			x = player_id.x + 32 * spr_dir;
			y = player_id.y - 50;
			if (player_id.state != PS_ATTACK_GROUND || player_id.window > 4) set_article_state(2);
		}
		switch (state) {
			case 0: //first flame
				if (state_timer == 1) {
					sprite_index = sprite_get("utilt_fire_by_sanctumpixel_edited");
				}
				image_index = floor(state_timer / 3);
				if (state_timer == 1)
			break;
			case 1:  //repeating flame
				image_index = 5 + (floor(state_timer / 3) mod 4);
			break;
			case 2:  //dissipate
				image_index = 9 + floor(state_timer / 3);
				if (state_timer >= 15) destroy = true;
			break;
		}
		oldhsp = hsp; //save variable for bouncing off walls
	break;
	
	case 5: //super grenade
		
		switch (state) {
			case 0: //active

				if (state_timer == 1) {
					sprite_index = sprite_get("grenade");
					//if (player_id.free == false && y <= player_id.y )
					hsp = player_id.hsp + (1 - vsp) * player_id.spr_dir;
					vsp += min(player_id.vsp - 3, 0);
					//create_hitbox
					article_hbox = create_hitbox(AT_USTRONG, 3, x, y);
					//article properties
					can_be_grounded = true;
					ignores_walls = false;
					free = true;
					//store vsp for bounces
					vsp_prev = vsp;
				}
				else {
					vsp += 0.5;
					hsp *= 0.99;
				}
				
				
				if (instance_exists(article_hbox)) {
					article_hbox.x = x;
					article_hbox.y = y;
				}
				else {
					set_article_state(1);
				}
				
				
				//detect bounces
				if (!free) {
					hsp *= 0.9;
					if (vsp_prev > 0) {
						vsp = -vsp_prev * 0.33;
						vsp_prev = vsp;
					}
					image_index++;
				}
				else {
					vsp_prev = vsp;
				}
				
			break;
			case 1:  //stopped moving: detonate soon
				vsp += 0.5;
				hsp *= 0.99;
				
				if (state_timer == 1) {
					hsp = -hsp * 0.25;
					vsp = -vsp * 0.1;
				}

				else if (state_timer >= 3) {
					set_article_state(2);
					hsp = 0;
					vsp = 0;
					visible = false;
					create_hitbox(AT_USTRONG, 4, x, y);
					spawn_hit_fx(x, y, player_id.ralsei_fx_nade_explode);
					sound_play(sound_get("dr_bomb_small"));
				}
			break;
			default:  //disappear
				destroy = true;
			break;
		}
		oldhsp = hsp; //save variable for bouncing off walls
	break;
	
	case 6: //intro benz
		hsp *= 0.9
		depth = player_id.depth + 1;
		switch (state_timer) {
			case 1:
				if (player_id.url != 2249417003) {
					player_id.state = PS_ATTACK_GROUND; 
					player_id.attack = AT_EXTRA_2;
					destroy = true;
				}
				else {
					sprite_index = sprite_get("benz");
					image_index = 0;
					hsp = 6 * spr_dir;
					sound_play(sound_get("skid_by_thaighaudio_edited"));
				}
			break;
			case 20:
				image_index = 1;
			break;
			case 50:
				sound_play(sound_get("dr_badexplosion"));
				spawn_hit_fx(x, y, player_id.ralsei_fx_stockexplosion);
				destroy = true;
			break;
		}
	break;
} //end switch (article_index)




//animation
//if (state != 0 || image_index >= 1) { image_index = (image_index + animation_speed) mod 4; }

if (article_index < 6) depth = player_id.depth - 1;

if (destroy || (y > room_height + 50 && article_index != 0)) {instance_destroy(); }

#define set_article_state 
state = argument0;
state_timer = 0;
return;

#define stop_minigun_shoot_sfx
if (minigun_sfx != noone) {
	sound_stop(minigun_sfx);
	minigun_sfx = noone;
	sound_play(sound_get("minigun_cooldown_by_soundfx-studio"), false);
}