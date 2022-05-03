//articleplatform_update


//destroy at top of screen
if (y < -30) {
	instance_destroy();
	exit;
}

//drawing update.
draw_glow = max(0, draw_glow - 1);
draw_timer_decimal += 1 + draw_glow / 100;
draw_timer = round(draw_timer_decimal);// = (draw_timer + 1) mod draw_seed;

invul_timer--;




//check if a character landed on the platform this frame
if (instant_destroy) {
	if (hp >= 0) {
		instant_destroy = false;
		hp = -1;
		sound_play(asset_get("sfx_kragg_roll_end"));
		
		if (player_id.attack == AT_DATTACK && player_id.epinel_other_standing_on_platform_id == id && player_id.state == PS_ATTACK_GROUND) 
			{ scr_epinel_platform_create_broken_plat_fx(player_id.x - x - (player_id.spr_dir * 85)); }
		else
			{ scr_epinel_platform_create_broken_plat_fx(player_id.x - x); }
	}
}
else if (landed_on) {
	landed_on = false;
	
	if (being_stood_on_timer == 0) scr_epinel_damage_platform_if_not_above_ground();
	
	if (hp == 0 || hp == 1) {
		hp = 0;
		sound_play(asset_get("sfx_kragg_roll_end"));
		scr_epinel_platform_create_warning_fx();
	}
	else {
		sound_play(asset_get("sfx_pillar_crumble"), 0, noone, 0.5, 1.1);
	}
}






if (crumble > 1) {
	
	
	//drift towards the speed of spr_dir.
	if (gravity_poll == 0) {
		gravity_poll = 12;
	}
	else {
		gravity_poll -= 1;
		if (gravity_poll = 0) {
			if (vsp != 0) { 
				vsp -= sign(vsp);//min(0, round(vsp + 1));
				if (vsp == 0) { 
					scr_platform_collide_with_other_platforms(0);
				}
			}
		}
	}
	
	//detect platforms if moving.
	if (hsp != 0 && vsp == 0)  scr_platform_collide_with_other_platforms(0);
	
	if (plat_hitstop <= 0) {
	
		if (friction_poll == 0) {
			friction_poll = ceil(25 / (abs(hsp) + 1));
		}
		else {
			friction_poll -= 1;
			if (friction_poll == 0) {
				if (abs(hsp) > 0) {
					hsp -= sign(hsp); 
					
				}
			}
		}
	}
	
}




//check if someone is on this platform
var player_is_standing_on_this_platform = 0;
//check if any opponent is attacking
var opponent_is_attacking = 0;
//friction.


with (oPlayer) {
	
	if (object_index == obj_article_platform) continue; //fixes a bug from some time ago; not sure if still needed
	
	//while marked as standing on this platform:
	if (epinel_other_standing_on_platform_id == other.id) {
		
		player_is_standing_on_this_platform = 1;
		
		//is this player in the air?
		if (free) {
			//then we're no longer on this platform.
			//if this is epinel, add this platform to his buffer.
			if (epinel_other_is_epinel) {
				if (state != PS_FIRST_JUMP && prev_state != PS_JUMPSQUAT) {
					epinel_buffered_standing_on_platform_id = epinel_other_standing_on_platform_id;
				}
				//give a hsp boost for jumping off this platform.
				if (state_cat == SC_AIR_NEUTRAL) hsp += other.hsp;
				else if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !hitpause) {
					switch (attack) {
						case AT_DSPECIAL:
						case AT_DSPECIAL_AIR:
						case AT_FSPECIAL:
						case AT_FSPECIAL_AIR:
						case AT_USPECIAL:
						case AT_USPECIAL_2:
						case AT_NSPECIAL:
							//do nothing
							break;
						case AT_UTILT:
							 hsp += other.hsp;
						break;
						default:
							if (state_timer < 1) hsp += other.hsp;
						break;
					}
				}
			}
			epinel_other_standing_on_platform_id = noone;
			
			//if this player slipped off the platform -and- the platform's moving in the same direction that they slipped, make sure they can't slip back onto the platform.
			if (y == other.y && vsp >= 0 && sign(other.hsp) == sign(x - other.x) && abs(x - other.x) > 55 * other.image_xscale) {
				x += other.hsp;
				y += 2;
			}
			
			epinel_other_platform_collision_check_timer = 4;
		}
		
		else {
			// double check that it's still above this platform. this is an expensive check, so only do this every few frames.
			if (epinel_other_platform_collision_check_timer <= 0) {
				var tempvar_this_player = id;
				with (other) {
					var still_on_platform = (y == tempvar_this_player.y && place_meeting(x, y-1, tempvar_this_player));
					if (!still_on_platform) {
						//we're not still on this platform. set epinel_other_standing_on_platform_id accordingly.
						tempvar_this_player.epinel_other_standing_on_platform_id = noone;
						
						//then, check all other epinel platforms to see if it's standing on one of those instead.
						with (obj_article_platform) {
						
							//skip if not an epinel platform.
							if (id == other.id || !instance_exists(player_id) || !player_id.epinel_other_is_epinel || hp < 0) { continue; }
							
							//if the player's on this platform, set that as their current platform.
							if (tempvar_this_player.y == y && place_meeting(x, y-1, tempvar_this_player)) {
								tempvar_this_player.epinel_other_standing_on_platform_id = id;
								break;
							}
						}
					}
				}
				//lastly, roll the timer back up.
				epinel_other_platform_collision_check_timer = 4;
			}
			else {
				//count down the timer.
				epinel_other_platform_collision_check_timer--;
			}
		}
		
	} //end if 'while marked as standing on this platform'
	else {
		//if not standing on that platform
		//if under the platform and not this platform's owner, check for attacks.
		if (id != other.player_id && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) &&  y > other.y ) {
			opponent_is_attacking = 1;
		}
	}
	
	//after all these checks: is this player an epinel? 
	if (epinel_other_is_epinel) {
		
		//allow epinel to surf on the platform if he is on top of it and crouching.
		if (epinel_other_standing_on_platform_id == other.id) {
			
			//epinel is on this platform. 
			//check if epinel is currently using an attack.
			var is_using_an_attack = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
			
			//disable the platform's friction at a certain threshold.
			if (abs(other.hsp) <= 6) {
				other.friction_poll = 3;
			}
			//make this platform glow.
			if (other.draw_glow < 50) other.draw_glow = min(50, other.draw_glow + 5);
			
			//add hitstop.
			if (hitpause) {
				other.plat_hitstop = floor(hitstop);
			}
			
			if ( ( is_using_an_attack && window <= 5 && attack == AT_DSPECIAL  ) && hitstop <= 0 && other.hitstop == 0 && other.hitpause == false) 		
		    {
				var freq = 2 - runeA;
				
				if (state_timer mod freq == freq-1) {
					if (abs(other.hsp) < 4 && sign(other.hsp) != sign(spr_dir)) {
						other.hsp = spr_dir;
					}
					other.hsp += spr_dir;
					
					with (other) {
						hsp = clamp(hsp, -top_speed, top_speed);
						draw_glow = min(100, draw_glow + 5);
						if (hp > 10) hp -= 8 - other.runeA * 4;
						else if (hp == 1 && time_until_crumble > 3) time_until_crumble -= 3;
						//halt friction upon reaching top speed
						if (abs(hsp) == top_speed) {
							friction_poll = 3;
						}
					}
				}
			}
		}
	}
}


//platform hitstop has to be handled manually?
if (plat_hitstop > 0) {
	
	if (!plat_hitpause) {
		old_hsp = hsp;
		hsp = 0;
		plat_hitpause = 1;
	}
	else {
		old_hsp += hsp;
		hsp = 0;
	}
	plat_hitstop--;
}
else {
	if (plat_hitpause) {
		plat_hitpause = 0;
		hsp = clamp(old_hsp, -top_speed, top_speed);
		old_hsp = 0;
	}
}
	
		

	/*
	if (hsp != 0 && vsp == 0 && false) {
		with (oPlayer) {
			if (epinel_other_standing_on_platform_id == other
			 && !place_meeting(x - other.old_hsp, y, asset_get("par_block")) ) {
				x -= other.old_hsp;
			}
		}
	}
	*/



//check for damage
if (opponent_is_attacking && invul_timer <= 0 && hp > 1) {
	with (pHitBox) {
		
		if (type != 2 && player_id.y > other.y && player_id != other.player_id && hit_priority != 0 && damage > 0 && place_meeting(x, y, other)) {
			
			sound_play(sound_effect, false, noone, 0.7);
			sound_play(asset_get("sfx_pillar_crumble"));
			var xx = x + hit_effect_x;
			var yy = y + hit_effect_y;
			with (player_id) {
				spawn_hit_fx(xx, yy, other.hit_effect);
				if (!hitpause) {
					hitpause = true;
					hitstop = min(hitstop, 2);
					old_hsp = hsp;
					old_vsp = vsp;
				}
			}
			with(other) {
				if (hp > hp_threshold) hp = hp_threshold;
				else hp = 1;
				invul_timer = 40;
			}
			break;
		}
	}
}



//crumble when moving offstage with a player on-board
if (player_is_standing_on_this_platform) {
	if (invul_timer <= 0) being_stood_on_timer++;
	if being_stood_on_timer >= 40 {
		being_stood_on_timer = 0;
		//check for ground beneath platform; deal damage if there is none
		scr_epinel_damage_platform_if_not_above_ground();
	}
}
else {
	being_stood_on_timer = 0;
	
	if (break_when_not_stood_on) hp = min(hp, 1);
	//	hp--;
	//	invul_timer = 45;
	//}
}
	
	
	



//at 1 hp, crumble automatically after a time limit if a player is standing on this platform.

if (hp == 1) {
	image_index = 2;
	//if (break_when_not_stood_on == true), this platform should break when its owner is not standing on it.
	if (break_when_not_stood_on == true && (player_id == noone || instance_exists( player_id ) == false || player_id.epinel_other_standing_on_platform_id != id) ) {
		hp = 0;
		sound_play(asset_get("sfx_kragg_roll_end"));
		//draw warnings above the head of each player standing on this platform
		scr_epinel_platform_create_warning_fx();
	}
	
	else {
		time_until_crumble--;
		if (hp > 0 && time_until_crumble == 0) {
	
			var tempvar_object_on_platform = 0;
			with (oPlayer) {
				if (!free && epinel_other_standing_on_platform_id == other.id) {
					tempvar_object_on_platform = 1; //player on platform
					break;
				}
			}
			
			//also check if there is a solid on top of this platform (e.g. kragg rock), or if this platform is simply clipped into the stage.
			if (tempvar_object_on_platform == 0 && place_meeting(x, y-1, asset_get("par_block"))) {
				tempvar_object_on_platform = 2; //solid object on platform
			}
			
			if (tempvar_object_on_platform > 0) {
				hp = 0;
				sound_play(asset_get("sfx_kragg_roll_end"));
				if (tempvar_object_on_platform == 1) {
					//draw warnings above the head of each player standing on this platform
					scr_epinel_platform_create_warning_fx();
				}
			}
		}
	}
}
else {
	image_index = (hp <= hp_threshold);
}
	
	

//crumble.
if (hp <= 0) {
	if (crumble < 1) sprite_index = asset_get("empty_sprite");
	else image_index = 2 + (((crumble * 10) mod 2) > 1);
	
	vsp = 0;
	
	if (crumble < 1.9) hsp = clamp(hsp, -top_speed+1, top_speed-1);
	
	//insta-crumble if hp is negative.
	if (hp < 0 && crumble > 1) crumble = 1;
	
	
	if (crumble <= 1 || hp == -1) {
		//spawn_hit_fx( x, y, 155);
		//remove mask.
		sprite_index = sprite_get("empty_sprite");
		mask_index = -1;//sprite_get("empty_sprite");
		
		if (hp == -1 && instance_exists(player_id) && player_id.attack == AT_DSPECIAL_AIR) {
			var snd_multiplier = (player_id.epinel_air_dspecial_platform_hits - 1) * 0.05;
			sound_play(asset_get("sfx_kragg_roll_turn"), 0, noone, 1 + snd_multiplier, 1 + snd_multiplier * 2);
		}
		else sound_play(asset_get("sfx_kragg_roll_turn"));
		
		var xx = x;
		var yy = y;
		var spacing = round(38 * image_xscale);

		//var chk = spawn_hit_fx( xx-spacing, yy, 193);//.pause = 10;//.image_xscale = image_xscale;
		//print(chk);
		//spawn_hit_fx( xx+spacing, yy, 193).pause = 10;//.image_xscale = image_xscale;
		
		with (oPlayer) {
			//stop standing on this platform
			if (epinel_other_standing_on_platform_id == other.id) {
				
				//if this player is epinel performing dash attack on this platform, make him use at_extra_1 instead
				if (epinel_other_is_epinel && state == PS_ATTACK_GROUND && attack == AT_DATTACK) {
					attack_end();
					destroy_hitboxes();
					set_attack(AT_EXTRA_1);
					if (!place_meeting(x - 8 * spr_dir, y, asset_get("par_block"))) x -= 8 * spr_dir; 
					if (!place_meeting(x, y + 8, asset_get("par_block"))) y += 8;
					//spr_dir = -spr_dir;
					hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
				}
				
				//set as no longer standing on this platform
				epinel_other_standing_on_platform_id = noone;
			}
			//if this player == epinel, use him to spawn a fx (because platforms can't???) then continue
			if (id != other.player_id) continue;
				
			var spacing = round(38 * image_xscale);
			
			//bullet hell platform rune (changed to inertia pillar rune)
			if (runeN && other.break_when_not_stood_on == false) {
				/*
				var shardangle = 0;
				for(var i = 0; i < 360; i+= 72;) {
					shardangle = i + random_func(i/72, 72, true);
					var temph = lengthdir_x(10, shardangle);
					var tempv = lengthdir_y(10, shardangle);
					var newproj = create_hitbox( AT_DSPECIAL, 6, round(other.x + lengthdir_x(spacing, shardangle)), other.y + 10 );
					newproj.hsp = lengthdir_x(10, i);
					newproj.vsp = lengthdir_y(10, i);
					newproj.length = 30;
				}
				*/
				tempvar_pillar_article = instance_create(other.x, 0, "obj_article3");
				tempvar_pillar_article.player_id = id;
				tempvar_pillar_article.follow_object_id = id;
				tempvar_pillar_article.lifetime *= other.pillar_lifetime_factor * (1 + runeN);//(1 + runeN);

			}

			//spawn_hit_fx( other.x, other.y, 192); //rock large
			spawn_hit_fx( xx-spacing, yy, 301).pause = 5;//image_xscale = image_xscale;
			spawn_hit_fx( xx+spacing, yy, 301).pause = 5;//image_xscale = image_xscale;
			
			if (other.hp > -1) {
				spawn_hit_fx( other.x, other.y, 301).pause = 10;//image_xscale = image_xscale; //193
			}
			else {
				//inertia hitbox
				create_hitbox(AT_USPECIAL, 2, other.x, other.y + 10);
				spawn_hit_fx( other.x, other.y, 302).pause = 10;
				spawn_hit_fx(xx, yy+10, epinel_fx_absorb);
				spawn_hit_fx(xx, yy+10, epinel_fx_inertia_medium);
			}
		}
		hp = -2;
		
		//break this platform
		instance_destroy();
		exit;
	}

	else if (crumble <= 0) {
		//detach from other players before destroying the instance.
		with (oPlayer) {
			if (epinel_other_standing_on_platform_id != other.id) continue; 
			epinel_other_standing_on_platform_id = noone;
		}
		instance_destroy();
		exit;
	}
	//else if (crumble < 1 && y > 0) y -= 20;
	
	//lastly, reduce variables.
	time_until_crumble -= 2;
	crumble -= 0.01 * (2 - break_when_not_stood_on);
}
else {
	invul_timer = max(invul_timer-1, 0);
}





#define scr_is_platform_above_ground
var image_yscale_prev = image_yscale
image_yscale = 100;
var return_value = place_meeting(x, y, asset_get("par_block"));
image_yscale = image_yscale_prev;
return return_value;

#define scr_platform_collide_with_other_platforms
/// scr_platform_collide_with_other_platforms(loops)
var loops = argument0;
if (argument0 >= 3) {
	scr_epinel_platform_destroy_if_touching_other_platforms();
	return;
}
with (obj_article_platform) {
	//skip if not an epinel platform.
	if (id == other.id || !instance_exists(player_id) || !player_id.epinel_other_is_epinel || crumble < 1) { continue; }
	
	//check for a collision
	var x_distance = abs(x - other.x) 
	var x_overlap_distance = 124 * (image_xscale + other.image_xscale) / 2;
	if ( abs(y - other.y) < 30 && x_distance < x_overlap_distance ) {
		
		//if they didn't collide by moving into each other from the side, just push the one above.
		if false {//(abs((x - hsp) - (other.x - other.hsp)) < x_overlap_distance) { 
		//if (hsp == 0 && other.hsp == 0) {
			if (y < other.y) { rise_poll = 6; gravity_poll = 2; vsp = min(vsp, -2); }
			else if (y > other.y) with other  { rise_poll = 6; gravity_poll = 2; vsp = min(vsp, -2); }
			
			var play_break_sound = (hp > hp_threshold || other.hp > other.hp_threshold);
			if (play_break_sound) {
				hp = min(hp, hp_threshold);
				other.hp = min(other.hp, hp_threshold);
				sound_play(asset_get("sfx_pillar_crumble"));
			}
		}
		else {
			//measure distance between
			var point_between = round((x + other.x) / 2);
			var position_sign = sign(x - point_between);
			if (position_sign == 0) {
				position_sign = sign(hsp);
				if (position_sign == 0) {
					position_sign = player_id.spr_dir;
				}
			}
			with (player_id) {
				spawn_hit_fx(point_between, other.y + 10, 14);
			}
			//swap speed and position
			x = round(point_between + 63 * image_xscale * position_sign);
			other.x = round(point_between - 63 * image_xscale * position_sign);
			var trade_hsp = hsp;
			hsp = sign(other.hsp) * ceil(abs(other.hsp / 2));
			other.hsp = sign(trade_hsp) * ceil(abs(trade_hsp / 2));
			//drop health of both platforms
			//hp = min(hp, hp_threshold);
			//draw_hp = min(draw_hp, hp_threshold);
			//other.hp = min(other.hp, hp_threshold);
			//other.draw_hp = min(other.draw_hp, hp_threshold);
			if (hp > 0) { hp -= (argument0 == 0); if hp == 0 sound_play(asset_get("sfx_kragg_roll_end")); }
			with (other) { if (hp > 0) { hp -= (argument0 == 0); if hp == 0 sound_play(asset_get("sfx_kragg_roll_end")); } }
			sound_play(asset_get("sfx_pillar_crumble"));
			//scr_epinel_platform_destroy_if_touching_other_platforms();
			//with (other) { scr_epinel_platform_destroy_if_touching_other_platforms(); }
			with (other) {scr_platform_collide_with_other_platforms(argument0 + 1); }
			break;
		}
	}
}
return;


#define scr_epinel_platform_create_warning_fx
if (instance_exists(player_id)) {
	//draw warnings above the head of each player standing on this platform
	var tempvar_this_player_id = player_id;
	with (oPlayer) {
		if (!free && epinel_other_standing_on_platform_id == other.id && (epinel_other_is_epinel <= 0 || state != PS_ATTACK_GROUND )) {
			var tempvar_warn;
			with (tempvar_this_player_id) { tempvar_warn = spawn_hit_fx( other.x + other.spr_dir * 20, other.y - other.char_height, epinel_fx_warning ); }
			switch (get_player_team( player )) {
				default:
					tempvar_warn.image_blend = c_red;
				break;
			}
		}
	}
}
return;


#define scr_epinel_platform_create_broken_plat_fx
/// scr_epinel_platform_create_broken_plat_fx(hit_x)
var hit_x = argument0;
var index;
if (hit_x < -24) index = 0;
else if (hit_x > 24) index = 2;
else index = 1;

instance_create(x, y, "obj_article1").state = 200 + index;
instance_create(x, y, "obj_article1").state = 203 + index;

if (instance_exists(player_id)) {
	//draw warnings above the head of each player standing on this platform
	var tempvar_this_player_id = player_id;
	with (oPlayer) {
		if (!free && epinel_other_standing_on_platform_id == other.id && (epinel_other_is_epinel <= 0 || state != PS_ATTACK_GROUND )) {
			var tempvar_warn;
			with (tempvar_this_player_id) { tempvar_warn = spawn_hit_fx( other.x + other.spr_dir * 20, other.y - other.char_height, epinel_fx_warning ); }
			switch (get_player_team( player )) {
				default:
					tempvar_warn.image_blend = c_red;
				break;
			}
		}
	}
}
return;


#define scr_epinel_platform_destroy_if_touching_other_platforms
var is_collision = false;
with (obj_article_platform) {
	//skip if not an epinel platform.
	if (id == other.id || !instance_exists(player_id) || !player_id.epinel_other_is_epinel || crumble < 1) { continue; }
	
	
	
	//check for a collision
	if ( abs(y - other.y) < 30 && abs(x - other.x) < 110 * (image_xscale + other.image_xscale) / 2 ) {
		is_collision = true;
		break;
	}
}

if (is_collision) {
	//destroy this platform
	instant_destroy = true;
	break_when_not_stood_on = true;
}	

return;


#define scr_epinel_damage_platform_if_not_above_ground
if (hp > 1 && !scr_is_platform_above_ground()) {
	hp--;
	if (hp == 1 || hp == hp_threshold) {
		sound_play(asset_get("sfx_pillar_crumble"));
		time_until_crumble = min(time_until_crumble, 5);
	}
} 
return;
