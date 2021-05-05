


if (attack == AT_USPECIAL) {
	
	//manual hitpause timer
	if (in_hitpause_timer >= 1) {
		in_hitpause_timer--;
		if (in_hitpause_timer < 1) {
			in_hitpause = false;
			in_hitpause_timer = 0;
		}
	}
	
	
    proj_angle += 0.5 * -hsp;
	if player_id.nspecial_active && player_id.nspecial_current == id {
		
		//make the egg float
		hsp *= player_id.nspecial_friction;
		vsp -= grav;
		vsp *= player_id.nspecial_friction;
		
		//deactivate the egg hitbox's ability to hit opponents
		deactivate_egg_hitbox_if_currently_active();

	}
	else {
		//if not under nspecial's effects, activate the egg hitbox
		activate_egg_hitbox_if_currently_inactive();
	}
	
	//handle hitbox collisions. (moved to the bottom of this script to make things tidy)
	handle_hitbox_collisions();
	
    if (!free && hitbox_timer >= 60 * 0.1) {
        // Destroy on contact with ground
		
		if place_meeting(x,y,player_id.nspecial_current) {
			player_id.nspecial_current.should_crack = 1;
		}
		
        if grounds != 0 destroyed = true; else {
			vsp = abs(vspold)*-0.5
			hsp = hspold;
			should_crack = 1;
			//grav *= 2;
			sound_play(bounce_sound)
			y -= 10
		}
		
		if destroyed sound_play(break_sound)
    }

    if (x < 0 || x > room_width || y > room_height) {
        // Destroy when offstage
        destroyed = true;
    }

    if (destroyed) {
        player_id.boulder_alive = false;
    }
    
	vspold = vsp;
	hspold = hsp;
	
	//create egg trail effect
	//if grounds == 0 
	if (egg_hitbox_is_active) {
		trailtimer--;
		if trailtimer <= 0 {
			trailtimer = 6;
			var newfx = spawn_hit_fx(x, y, player_id.vfx_boulder_trail);
			newfx.depth = depth+1;
			newfx.spr_dir = -1+(x mod 2)*2;
			newfx.draw_angle = (y mod 4)*90
		}
	}
	else {
		trailtimer = 1;
	}
	
	
	hit_by_fspecial = 0;
	
	if should_crack > 0{
		
	
		if should_crack != 2 sound_play(bounce_sound)
		
		grounds = -1;
		image_index = 1;
		damage = player_id.BOULDER_BOUNCE_DAMAGE;
		kb_value = player_id.BOULDER_BOUNCE_KNOCKBACK;
		kb_scale = player_id.BOULDER_BOUNCE_KNOCKBACK_SCALING;
		hit_flipper = player_id.BOULDER_BOUNCE_FLIPPER;
		if should_crack != 2 spawn_hit_fx(x, y, bounce_fx)
		should_crack = 0;
	}
}




#define activate_egg_hitbox_if_currently_inactive
//only run this if egg_hitbox_is_active does not equal true.
if (egg_hitbox_is_active) return;
egg_hitbox_is_active = true;
hitby_group = -1;
with (oPlayer) {
	if (id == other.player_id) continue;
	other.can_hit[player] = 1;
}
return;

#define deactivate_egg_hitbox_if_currently_active
//run this every frame after frame 2.
if (hitbox_timer < 6) return;

//run this repeatedly, even if egg_hitbox_is_active already equals false.
egg_hitbox_is_active = false;
with (oPlayer) {
	//don't change anything for bird guy.
	if (id == other.player_id) continue;
	//while deactivated, the egg can only hit players who are in hitstun AND not in hitpause AND not in the middle of a galaxy effect.
	other.can_hit[player] = (state_cat == SC_HITSTUN && !hitpause && !activated_kill_effect);
}
return;


#define put_player_in_hitpause
var hitpause_length = argument0;
if (hitpause_length < 1) return;
with (player_id) {
	if (hitpause || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)) return;
	hitpause = true;
	hitstop = hitpause_length;
	old_hsp = hsp;
	old_vsp = vsp;
}

#define check_if_player_is_in_an_attack_state_and_has_not_been_parried
return ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && !(player_id.was_parried) );

#define handle_hitbox_collisions
//detect hitbox collisions with the egg

//first, refresh the last hbox group to hit this egg if BG is using a new attack
refresh_player_egg_hit_when_player_uses_a_new_attack();

//detect egg collisions (this only ever detects one hitbox touching the egg)
if ap_hit_enabled && !hit_by_fspecial && hitstop < 1 {
	var aphit = instance_place(x,y,object_index);
	if aphit != id && aphit != noone {
		if !is_being_hit {// aphit.attack != attack && (aphit.attack != AT_FSPECIAL || ) {
			if aphit.player_id == player_id {
				switch (aphit.attack) {
					case AT_USPECIAL:
					//do nothing
					break;
					case AT_FSPECIAL:
					//trigger fspecial on the egg
					with (player_id) {
						if (attack != AT_FSPECIAL || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || was_parried ) break;
						attack_end();
						set_attack(AT_FSPECIAL_2);
						spawn_hit_fx(x, y, hit_fx_create(sprite_get("fspecial_fx"), 15));
						y = (other.y + 10);
						if (other == nspecial_current) {

						}
						with (other) {
							vsp = 0;
							hit_by_fspecial = 1;
							//put the egg in long hitpause
							in_hitpause = 1;
							in_hitpause_timer = 30;
							register_player_egg_hit(aphit);
						}
					}
						
					break;
					case AT_FSPECIAL_2:
						//hit the egg horizontally
						hsp = 9 * player_id.spr_dir;
						vsp = -2;
						
						if (player_id.nspecial_current == id) player_id.nspecial_current = noone;
						//if grounds == -1 {
							hsp *= ap_hit_breakout_mult;
							vsp *= ap_hit_breakout_mult;
						//}
						should_crack = 0;
						
						in_hitpause = 1;
						in_hitpause_timer = 2;
						put_player_in_hitpause(2);
						register_player_egg_hit(aphit);
						
					break;
					
					
					case AT_DAIR:
						//dair bounces off of the egg as well as hitting it away
						if (player_id.attack == AT_DAIR && check_if_player_is_in_an_attack_state_and_has_not_been_parried() ) {
							with (player_id) {
								//change bird guy's bounce vsp and hsp in dair.gml
								hsp = get_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_HSPEED) * spr_dir
								vsp = get_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_VSPEED)
								old_hsp = hsp;
								old_vsp = vsp;
							}		
						}
					//don't 'break;' - run the 'default' code for DAir too
					
					default: 
						//anything else: hit the egg away
						
						//don't do anything if this hitbox attack and group matches the previous hitbox and group
						if (!check_for_unique_attack_hitbox_or_group(aphit)) break;
						
						
						var dir = get_hitbox_angle(aphit);
						var dis = ((aphit.kb_value) + (ap_hit_kb_scale_percent * aphit.kb_scale) + ((player_id.power_state == player_id.POWER_STATE_UP) - (player_id.power_state == player_id.POWER_STATE_DOWN))*ap_hit_power_mult)*ap_hit_total_mult
						hsp = lengthdir_x(dis, dir);
						vsp = lengthdir_y(dis, dir);
						
						// --- hit eggs out of stasis, even if uncracked
						if (player_id.nspecial_active && player_id.nspecial_current == id) {player_id.nspecial_current = noone;}
						//if grounds == -1 {
						hsp *= ap_hit_breakout_mult;
						vsp *= ap_hit_breakout_mult;
						//}
						// ---
						
						// --- don't hit uncracked eggs out of stasis
						//if grounds == -1 {player_id.nspecial_current = noone;
						//hsp *= ap_hit_breakout_mult;
						//vsp *= ap_hit_breakout_mult;
						//}
						// ---
						
						should_crack = 1;
						
						in_hitpause = 1;
						
						in_hitpause_timer = ceil(aphit.hitpause / 2);
						
						//in_hitpause = (hitstop >= 1);
						if (aphit.type != 2) put_player_in_hitpause(in_hitpause_timer);
						//add extra hitpause
						in_hitpause_timer += max(0, aphit.extra_hitpause);
						
						register_player_egg_hit(aphit);
						
					break;
				}

				
				
			} else if get_player_team(aphit.player) != get_player_team(player) {
				destroyed = true;
			}

			//if destroyed sound_play(break_sound)
			
			//( DAIR code has been moved up into the switch statement )		
			
		}
	} else {is_being_hit = 0; }
}
return;

#define register_player_egg_hit
//runs when "handle_hitbox_collisions()" determines that BG has hit one of his own eggs.

//first, activate the egg if it isn't already
activate_egg_hitbox_if_currently_inactive();

var hit_by_hitbox_id = argument0;
is_being_hit = 1;
if hitby_attack != hit_by_hitbox_id.attack {
	sound_play(hit_by_hitbox_id.sound_effect);
}
hitby_attack = hit_by_hitbox_id.attack;
hitby_group = hit_by_hitbox_id.hbox_group;


#define refresh_player_egg_hit_when_player_uses_a_new_attack
with (player_id) {
    var hb_hitby_group_reset = (state_timer == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR));
}
if (hb_hitby_group_reset) { hitby_group = -1; }
return;

#define check_for_unique_attack_hitbox_or_group
//checks if an egg is being hit by a hitbox that is either a unique attack or a unique hitbox group.
//print("attack check: " + string(hit_by_hitbox_id.attack != hitby_attack));
//print("group check:  " + string(hit_by_hitbox_id.hbox_group != hitby_group));
var hit_by_hitbox_id = argument0;
return (hit_by_hitbox_id.attack != hitby_attack || hit_by_hitbox_id.hbox_group != hitby_group || hit_by_hitbox_id.type == 2);