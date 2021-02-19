//articleplatform_update

/*
if (instance_exists(player_id)) {
	//with (player_id) { spawn_hit_fx( x, y - char_height - 40, epinel_fx_warning ); }
	//draw warnings above the head of each player standing on this platform
	var tempvar_this_player_id = player_id;
	with (oPlayer) {
		if (!free && epinel_other_standing_on_platform_id == other.id && (epinel_other_is_epinel <= 0 || state != PS_ATTACK_GROUND || attack != AT_DTILT )) {
			var tempvar_warn;
			with (tempvar_this_player_id) { tempvar_warn = spawn_hit_fx( other.x, other.y - other.char_height - 40, epinel_fx_warning ); }
			switch (get_player_team( player )) {
				default:
					tempvar_warn.image_blend = c_red;
				break;
			}
		}
	}
}
*/




//drawing update.
draw_glow = max(0, draw_glow - 1);
draw_timer_decimal += 1 + draw_glow / 100;
draw_timer = round(draw_timer_decimal);// = (draw_timer + 1) mod draw_seed;

//platform hitstop has to be handled manually?
if (hitstop > 0) {
	hitstop = max(hitstop-1, 0);
	if (hsp != 0) {
		with (oPlayer) {
			if (epinel_other_standing_on_platform_id == other
			 && !place_meeting(x - other.old_hsp, y, asset_get("par_block")) ) {
				x -= other.old_hsp;
			}
		}
	}
}


//check if a character landed on the platform this frame
if (instant_destroy) {
	if (hp >= 0) {
		instant_destroy = false;
		draw_hp = -1;
		hp = -1;
		sound_play(asset_get("sfx_kragg_roll_end"));
	}
}
else if (landed_on) {
	landed_on = false;
	if (draw_hp > 2) {
		if (landing_damage > 0) {
			hp = max(2, hp - landing_damage);
			landing_damage = -40;
			sound_play(asset_get("sfx_pillar_crumble"));
		}
	}
	else if (draw_hp == 0 || draw_hp == 1) {
		hp = 0;
		draw_hp = 0;
		sound_play(asset_get("sfx_kragg_roll_end"));
		scr_epinel_platform_create_warning_fx();
	}
}




//drop hp.
if (hp > 1 && hp != 250) {
	hp = max(1, hp - 1);
}

//draw_hp update.
draw_hp = max(hp, draw_hp - 5);



//landing damage update.
landing_damage = min(200, landing_damage + 2);

//var player_exists = (player_id != noone && instance_exists( player_id ));



//make players follow rising platforms
//if (vsp < 0) {
//	with (oPlayer) {
//		if (y == other.y - other.vsp && !free) {
//			y =
//		}
//	}
//}

if (crumble > 1) {
	
	//detect platforms if moving.
	if (hsp != 0)  scr_platform_collide_with_other_platforms();
	
	if (hitstop <= 0) {
	
		//drift towards the speed of spr_dir.
		if (gravity_poll == 0) {
			gravity_poll = 3;
		}
		else {
			gravity_poll -= 1;
			if (gravity_poll = 0) {
				if (vsp != 0) { 
					vsp -= sign(vsp);//min(0, round(vsp + 1));
					if (vsp == 0 && hsp == 0) { 
						scr_platform_collide_with_other_platforms();
						//destroy this platform if it is still touching another platform.
						
						
					}
				}
			}
		}
	
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





//friction.


with (oPlayer) {
	
	if (object_index == obj_article_platform) continue; //fixes a bug from some time ago; not sure if still needed
	
	//while marked as standing on this platform:
	if (epinel_other_standing_on_platform_id == other.id) {
	
		//is this player in the air?
		if (free) {
			//then we're no longer on this platform.
			//if this is epinel, add this platform to his buffer.
			if (epinel_other_is_epinel && state != PS_FIRST_JUMP && prev_state != PS_JUMPSQUAT) {
				epinel_buffered_standing_on_platform_id = epinel_other_standing_on_platform_id;
			}
			epinel_other_standing_on_platform_id = noone;
			//give a hsp boost for jumping off this platform.
			if (state_cat == SC_AIR_NEUTRAL) hsp += other.hsp * 0.75;
			epinel_other_platform_collision_check_timer = 4;
		}
		
		//this player's on the ground. double check that it's still above this platform.
		//this is an expensive check, so only do this every few frames.
		else if (epinel_other_platform_collision_check_timer <= 0) {
			
			var tempvar_this_player = id;
			with (other) {
				var still_on_platform = place_meeting(x, y-1, tempvar_this_player);
				if (!still_on_platform) {
					//we're not still on this platform. check all other epinel platforms to see if it's standing on one of those instead.
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
	} //end if 'while marked as standing on this platform'
	
	
	//after all these checks: is this player an epinel? 
	if (epinel_other_is_epinel) {
		//allow epinel to surf on the platform if he is on top of it and crouching.
		if (epinel_other_standing_on_platform_id == other.id && 
				 (     
					   //( state == PS_CROUCH && state_timer > 4 ) ||
					( (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window <= 5 && attack == AT_DSPECIAL  )
				 )
				&& hitstop <= 0 && other.hitstop == 0 && other.hitpause == false		
		   ) {
					
			//nyoom fast if this is a low platform on-stage
			//var stagex = get_stage_data( SD_X_POS );
			//var stagey = get_stage_data( SD_Y_POS );
			var freq = 3 - runeA;
			//if (other.y > stagey - 90 && y < stagey && other.x > stagex && other.x <= room_width - stagex) { freq = 3; }
			
			if (state_timer mod freq == freq-1) {
				other.hsp += spr_dir;//right_down - left_down;//player_id.spr_dir;
				
				with (other) {
					hsp = clamp(hsp, -top_speed, top_speed);
					draw_glow = min(100, draw_glow + 5);
					if (hp > 9) hp -= 7 - other.runeA * 2;
					else if (draw_hp == 1 && time_until_crumble > 3) time_until_crumble -= 3;
					//halt friction upon reaching top speed
					if (abs(hsp) == top_speed) {
						friction_poll = 4;
					}
				}
				
				other.hsp = clamp(other.hsp, -other.top_speed, other.top_speed);
				other.draw_glow = min(100, other.draw_glow + 5);
				if (other.hp > 9) other.hp -= 7 - runeA * 2;
				else if (other.draw_hp == 1 && other.time_until_crumble > 3) other.time_until_crumble -= 3;
			}
			else {
				if (other.draw_glow < 50) other.draw_glow = min(50, other.draw_glow + 5);
			}
		}
		
		//lower Epinel's weight while he is under this platform.
		else if (free && y > other.y && x >= other.x-75 && x < other.x+75) 
		{
			//epinel_lightweight_time = 4; //!
		}
	}
}
		

//crumble when off-stage.
//var stage_x = get_stage_data( SD_X_POS );
if (x < -100 || x >= room_width + 100) {
	hp = min(hp, 0);
	draw_hp = hp;
}



//at 1 hp, crumble automatically after a time limit if a player is standing on this platform.
if (draw_hp == 2) {
	sound_play(asset_get("sfx_pillar_crumble"));
	image_index = 2;
}
else if (draw_hp == 1) {
	image_index = 2;
	//if (break_when_not_stood_on == true), this platform should break when its owner is not standing on it.
	if (break_when_not_stood_on == true && (player_id == noone || instance_exists( player_id ) == false || player_id.epinel_other_standing_on_platform_id != id) ) {
		draw_hp = 0;
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
				draw_hp = 0;
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
	image_index = (draw_hp <= 250);
}
	
	

//crumble.
if (draw_hp <= 0 || hp <= 0) {
	if (crumble < 1) sprite_index = asset_get("empty_sprite");
	else image_index = 2 + ((crumble * 10) mod 2);
	//hsp = 0;//floor(hsp/2);
	vsp = 0;//floor(vsp/2);
	
	if (crumble < 1.9) hsp = clamp(hsp, -6, 6);
	
	//insta-crumble if hp is negative.
	if (hp < 0 && crumble > 1) crumble = 1;
	
	
	if (crumble == 1 || hp == -1) {
		//spawn_hit_fx( x, y, 155);
		//remove mask.
		mask_index = -1;//sprite_get("empty_sprite");
		
		if (hp == -1 && instance_exists(player_id) && player_id.attack == AT_DSPECIAL_AIR) {
			var snd_multiplier = (player_id.epinel_air_dspecial_platform_hits - 1) * 0.05;
			sound_play(asset_get("sfx_kragg_roll_turn"), 0, noone, 1 + snd_multiplier, 1 + snd_multiplier * 2);
		}
		else sound_play(asset_get("sfx_kragg_roll_turn"));
		
		//put players who aren't Epinel into pratfall.
		
		with (oPlayer) {
			//if this player == epinel, use him to spawn a fx (because platforms can't???) then continue
			if (id == other.player_id) {
				
				var spacing = round(38 * image_xscale);
				
				
				//spawn platforms don't have shards
				if (other.break_when_not_stood_on == false) {
				
					//bullet hell platform rune
					if (runeN) {
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
					}
				}
			
				if (other.hp <= -1 && other.break_when_not_stood_on == false) {
					spawn_hit_fx( other.x, other.y, 155); //rock x-large
					
					tempvar_pillar_article = instance_create(other.x, 0, "obj_article3");
					tempvar_pillar_article.player_id = id;
					//tempvar_pillar_article.follow_object_id = id;
					tempvar_pillar_article.lifetime *= other.pillar_lifetime_factor * (1 + runeN);//(1 + runeN);
				}
				else {
					//spawn_hit_fx( other.x, other.y, 192); //rock large
					spawn_hit_fx( other.x-spacing, other.y, 193).image_xscale = image_xscale;
					spawn_hit_fx( other.x+spacing, other.y, 193).image_xscale = image_xscale;
					spawn_hit_fx( other.x, other.y, 193).image_xscale = image_xscale;
				}
				
				//continue; 
			}
			
		}
		hp = -2;
	}

	else if (crumble <= 0) {
		//detach from other players before destroying the instance.
		with (oPlayer) {
			if (epinel_other_standing_on_platform_id == other.id) epinel_other_standing_on_platform_id = noone;
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


#define scr_platform_collide_with_other_platforms
with (obj_article_platform) {
	//skip if not an epinel platform.
	if (id == other.id || !instance_exists(player_id) || !player_id.epinel_other_is_epinel || crumble < 1) { continue; }
	
	//check for a collision
	if ( abs(y - other.y) < 30 && abs(x - other.x) < 110 * (image_xscale + other.image_xscale) / 2 ) {
		//measure distance between
		var point_between = round((x + other.x) / 2);
		var position_sign = sign(x - point_between);
		if (position_sign == 0) {
			position_sign = sign(hsp);
			if (position_sign == 0) {
				position_sign = player_id.spr_dir;
			}
		}
		//swap speed and position
		x = round(point_between + 57 * image_xscale * position_sign);
		other.x = round(point_between - 57 * image_xscale * position_sign);
		var trade_hsp = hsp;
		hsp = sign(other.hsp) * ceil(abs(other.hsp / 2));
		other.hsp = sign(trade_hsp) * ceil(abs(trade_hsp / 2));
		//drop health of both platforms
		hp = min(hp, 500);
		other.hp = min(other.hp, 500);
		sound_play(asset_get("sfx_pillar_crumble"));
		scr_epinel_platform_destroy_if_touching_other_platforms();
		with (other) { scr_epinel_platform_destroy_if_touching_other_platforms(); }
		break;
	}
}
return;

#define scr_epinel_platform_create_warning_fx
if (instance_exists(player_id)) {
	//draw warnings above the head of each player standing on this platform
	var tempvar_this_player_id = player_id;
	with (oPlayer) {
		if (!free && epinel_other_standing_on_platform_id == other.id && (epinel_other_is_epinel <= 0 || state != PS_ATTACK_GROUND || attack != AT_DTILT )) {
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