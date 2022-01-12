//article_solid_update

var platforms_exist = instance_exists(obj_article_platform);

//UPDATE OTHER
with (oPlayer) {
	//for some reason this is running in platform instances too...?
	if (object_index == obj_article_platform) continue;
	
	if (epinel_other_update_performed) continue;
	
	//let epinel perform his own updates.
	if (epinel_other_is_epinel && other.player_id != id) continue;
	
	epinel_other_update_performed = true;
	
	//checking for platforms. skip if free.
	if (!free && platforms_exist) {
	
		var plat_check = (epinel_other_standing_on_platform_id == noone 
							&& vsp >= 0 
							&& (epinel_other_freeprevious || epinel_other_yprevious != y || state_timer <= 1 || state == PS_WAVELAND) ) ;
							///&& (state_timer <= 1) ); 
		
		//check for landing on platforms.
		if (plat_check) {
			with (obj_article_platform) {
				//find out if we landed on one of Epinel's platforms.
				if ( (other.y != y) || (!instance_exists(player_id)) || (!player_id.epinel_other_is_epinel) 
				  || !(place_meeting(x, y-1, other.id)) ) { continue; }  //|| !(place_meeting(x, y-1, other.id)) ) { continue; }  
					
				//damage the platform
				if (invul_timer <= 0) { 
					landed_on = true;
					
					//if this character is the epinel who made this platform, accelerate the platform in some direction.
					if (other.id == player_id ) {
						var relative_spd = (other.hsp * 1.5) - hsp;
						hsp += clamp(floor(sqrt(abs(relative_spd))) * sign(relative_spd), -3, 3);
					}
					else if (hp > 1) {
						//if not that epinel, become briefly stunned.
						with (other) {
							//print("landing state: " + get_state_name(state) + " " + string(state_timer));
							switch (state) {
								case PS_LAND:
								case PS_LANDING_LAG:
								case PS_HITSTUN_LAND:
								case PS_PRATLAND:
								case PS_WAVELAND:
								case PS_AIR_DODGE:
									scr_epinel_platform_trip();
								break;
								
							}
						}
					}
				}
	
				//set epinel's platform variable to this platform.
				other.epinel_other_standing_on_platform_id = id;
				
				//mark that this platform has been landed on.
				landed_on = true;
				
				//set this platform's top speed.
				if (other.epinel_other_is_epinel) {
					if (other.runeA) top_speed = top_speed_high;
					else top_speed = top_speed_low;
					
				}
				
				//particle fx.
				scr_epinel_create_platform_landing_particles(id, other.id);
				
				break; //break here; we are only looking for one platform
			}
		}
		//platform trip check for aerials
		else if ((state == PS_LANDING_LAG || state == PS_LAND) && state_timer == 0 
		&& instance_exists(epinel_other_standing_on_platform_id) 
		&& id != epinel_other_standing_on_platform_id.player_id 
		&& epinel_other_standing_on_platform_id.hp > 1) {
			scr_epinel_platform_trip();
		}
	}
	
	//store yprevious value and free value. would be nice if gamemaker's default yprevious worked.
	//sadly this doesn't work in the article_solid object.
	epinel_other_yprevious = y;
	epinel_other_freeprevious = free;
	
	//reset the weightless timer upon receiving any attack.
	if (state_cat == SC_HITSTUN && state_timer == 0) {
		epinel_other_weightless_timer = 0;
	}

	//skip the rest of this script during hitpause.
	if (hitpause || hitstop >= 1) { continue; } 

	if (epinel_other_weightless_inflicted > 0) {
		
		//weightless status was newly inflicted.
		//wait until after a dodge to inflict it.
		
		//'inflicted = 2' is used for inertia moves inflicted one after the other.
		if (epinel_other_weightless_inflicted != 2 && epinel_other_weightless_timer == 0) {
			//if this player wasn't already weightless, initiate its effects.
			hsp /= 2.5;
			vsp /= 2.5;
			epinel_other_weightless_hsp = hsp;
			epinel_other_weightless_vsp = vsp;
			old_hsp = hsp;
			old_vsp = vsp;
			old_old_hsp = hsp;
			old_old_vsp = vsp;
			scr_epinel_cap_inertia_speed_if_not_in_hitstun();
		}
		
		switch (epinel_other_weightless_inflicted) {
			
			case 3:	
				//'inflicted = 3' is used for up-special, and makes players weightless for longer.
				epinel_other_weightless_timer = max(epinel_other_weightless_timer, 48); 
			break;
			
			case 4:
			//'inflicted = 4' is used for epinel's taunt. it freezes players on the spot.
				epinel_other_weightless_timer = 180;
				epinel_other_player_that_inflicted_weightless_id = other.player_id;
				epinel_other_weightless_hsp = 0;
				epinel_other_weightless_vsp = 0;
				hsp = 0; vsp = 0; old_hsp = 0; old_vsp = 0;
				has_walljump = true;
			break;
			
			//'inflicted = 5' = short inertia.
			case 5:
				epinel_other_weightless_timer = max(epinel_other_weightless_timer, 24); 
			break;
			
			//'inflicted = 1' = normal inertia.
			default:
				epinel_other_weightless_timer = max(epinel_other_weightless_timer, 32); 
			break;
		}
		
		//set inflicted to false.
		epinel_other_weightless_inflicted = 0;
	}
	//else {

		//weightless status was not newly inflicted.
		//get rid of the status if the affected player wall-teched.
		if (state == PS_WALL_TECH || state == PS_TECH_GROUND) {
			epinel_other_weightless_timer = 0;
		}
		
		if (epinel_other_weightless_timer > 0) {
			
			//disable jumping, so that this status effect doesn't swallow it.
			can_jump = false;
			
			//trail effect.
			if (epinel_other_weightless_timer % 10 == 0 && !hitpause && instance_exists(epinel_other_player_that_inflicted_weightless_id) 
			&& (!epinel_other_is_epinel || (super_armor == false && soft_armor == 0))) {
				
				with (epinel_other_player_that_inflicted_weightless_id) {
					spawn_hit_fx(other.x, other.y - round(other.char_height / 2), epinel_fx_inertia_small)//.image_alpha = 0.5;// - 0.5 * (other.epinel_other_player_that_inflicted_weightless_id == id);
				}
				
			}
			
			//if the player wall-jumped
			
			//increase vsp if the opponent tried to jump some other way.
			
			if (vsp < epinel_other_weightless_vsp) {
				if (vsp / 3 < epinel_other_weightless_vsp) {
					epinel_other_weightless_vsp = vsp / 3;
				}
				else {
					var vsp_increment = sqrt(abs(vsp - epinel_other_weightless_vsp));
					epinel_other_weightless_vsp -= vsp_increment;
				}
			}

			
			//lock hsp and vsp while weightless status is active.
			//don't lock while invincible.
			
			//don't lock while dodging.
			var in_tech_state = false;
			switch (state) {
				case PS_AIR_DODGE:
				case PS_ROLL_BACKWARD:
				case PS_ROLL_FORWARD:
				case PS_TECH_BACKWARD:
				case PS_TECH_FORWARD:
				case PS_WALL_TECH:
					in_tech_state = true;
					scr_epinel_cap_inertia_speed_if_not_in_hitstun();
				break;
				
				case PS_WALL_JUMP:
					if (state_timer > 0) break; 
					in_tech_state = true;
					scr_epinel_cap_inertia_speed_if_not_in_hitstun();
				break;
				
				case PS_PRATFALL:
					//recover out of pratfall sooner.
					if (epinel_other_weightless_timer < 20) epinel_other_weightless_timer = 1;
					//continue to 'default:'
					scr_epinel_cap_inertia_speed_if_not_in_hitstun();
					scr_epinel_set_speed_to_inertia_speed();
				break;
				
				case PS_WALL_JUMP:
					//walljumps recover instantly at the start. don't cap speed.
					if (state_timer <= 1) {
						epinel_other_weightless_timer = 1;
						in_tech_state = true;
					}
					else {
						scr_epinel_cap_inertia_speed_if_not_in_hitstun();
						scr_epinel_set_speed_to_inertia_speed();
					}
				break;
				
				
				case PS_ATTACK_GROUND:
				case PS_ATTACK_AIR:
					//add an extra safety for characters in the middle of their up-b animations
					if (epinel_other_weightless_timer < 20 && (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND || attack == AT_USPECIAL_2)) {
						epinel_other_weightless_timer = 1;
					}
					
				default:
					scr_epinel_cap_inertia_speed_if_not_in_hitstun();
					scr_epinel_set_speed_to_inertia_speed();
				break;
			}
			
			//reduce the timer.
			epinel_other_weightless_timer -= 1;
			
			//if the timer hit zero, end weightless status by restoring the player's original speed.
			if (epinel_other_weightless_timer <= 0) {
				spawn_hit_fx(x, y - 30, 302); //67
				sound_play(other.sfx_release, false, noone, 0.5);
				if (!in_tech_state) {
					
					hsp *= 2.5;
					vsp *= 2.5;
					old_hsp = hsp;
					old_vsp = vsp;
					
					if (state_cat == SC_HITSTUN) {// || state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL) {
						//hitstop = max(hitstop, 2);
						//hitpause = true;
					}
					//halve absa jumps
					if (state == PS_DOUBLE_JUMP && djump_accel < 0) {
						state_timer = max(djump_accel_start_time, state_timer, djump_accel_end_time - 2 );
					}
				}
				
				//return this player's walljump
				//has_walljump = true;
			}
			
			//ko this player if they flew far above the blast zone
			else if (y < 0 && vsp < 1) {
					
				var blastzone_height = get_stage_data( SD_Y_POS ) - get_stage_data( SD_TOP_BLASTZONE ) - 300;
				if (y < blastzone_height) {
					set_state(PS_HITSTUN);
					hitstun = max(hitstun, 2);
				}
			}
		}
	//}
}


#define scr_epinel_platform_trip
if (prev_state == PS_PRATLAND || hitpause) return;
hsp *= 0.25;
//set_state(PS_PRATLAND);
//if (was_parried) parry_lag = max(parry_lag, 15);
//else { parry_lag = 15; was_parried = true; }
//other.draw_glow = 100;
var xx = x;
var yy = y;
with (other.player_id) {
	spawn_hit_fx(xx, yy, epinel_fx_parry).depth = other.depth + 1;
	spawn_hit_fx(xx, yy, epinel_fx_parry_front).depth = other.depth - 10;
	spawn_hit_fx(xx, yy, epinel_fx_parry_front).depth = other.depth - 10;
	var sfx = sound_get("releaseland");
}
sound_play(sfx, false, noone, 0.4, 0.9);
sound_play(asset_get("sfx_pillar_crumble"), false, noone, 0.75, 0.75);
shake_camera(1, 2);
return;

#define scr_epinel_create_platform_landing_particles
if (!instance_exists(argument0.player_id)) return;
for(var i = 1; i <= 3; i++) {
	var newarticle = instance_create(argument1.x, argument1.y, "obj_article1");
	newarticle.state = 100;
	newarticle.player_id = player_id;
	newarticle.random_index = i;
}
return;


#define scr_epinel_cap_inertia_speed_if_not_in_hitstun
if (state_cat == SC_HITSTUN) return;
var inertiaspeed = point_distance(0, 0, epinel_other_weightless_hsp, epinel_other_weightless_vsp);
if (inertiaspeed <= 5) return;
var factor = inertiaspeed / 5;
epinel_other_weightless_hsp /= factor;
epinel_other_weightless_vsp /= factor;
return;

#define scr_epinel_set_speed_to_inertia_speed
hsp = epinel_other_weightless_hsp;
vsp = epinel_other_weightless_vsp;
//if (!free && (!epinel_other_is_epinel || (attack != AT_FSPECIAL && attack != AT_FSPECIAL_AIR)) ) { 
if (!free && state != PS_ATTACK_GROUND && (!epinel_other_is_epinel || (attack != AT_FSPECIAL && attack != AT_FSPECIAL_AIR)) ) { 
	if (place_meeting(x, y-1, asset_get("par_block")) ) {
		vsp = min(-1, vsp);
	}
	else {
		y -= 1;
		vsp = min(-1, vsp);
		free = true;
	}
}
return;