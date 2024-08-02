muno_event_type = 1;
user_event(14);

with (oPlayer) {
	if (id != other.id) {
		if (!"incinRevengeTimer" in self) {
			incinRevengeTimer = 500;
		} else if (incinRevengeTimer < 500) {
			if (!hitpause || incinRevengeTimer > 12) {
				incinRevengeTimer++;
			}
			if (incinRevengeTimer == 15 || incinRevengeTimer == 23) {
				print("burn lol");
				other.burnType[player-1] = 3;
				other.burnTargetX[player-1] = round(x+hsp) - (10 * incinRevOffset);
				other.burnTargetY[player-1] = round(y+vsp);
				other.burnSide[player-1] = incinRevOffset;
				other.doBurn = true;
			}
			if (incinRevengeTimer == 31) {
				print("burn lol");
				other.burnType[player-1] = 4;
				other.burnTargetX[player-1] = round(x+hsp) - (10 * incinRevOffset);
				other.burnTargetY[player-1] = round(y+vsp);
				other.burnSide[player-1] = incinRevOffset;
				other.doBurn = true;
			}
			if (state_cat != SC_HITSTUN) {
				incinRevengeTimer = 50;
			}
		}
	}
}
if (in_adventure) {
	with (obj_stage_article) {
		if (!"incinRevengeTimer" in self) {
			incinRevengeTimer = 500;
		} else if (incinRevengeTimer < 500) {
			if (!hitpause || incinRevengeTimer > 12) {
				incinRevengeTimer++;
			}
			if (incinRevengeTimer == 15) {
				print("burn lol");
				other.burnTargetAdv = id;
				other.burnType[1] = 4;
				other.burnTargetX[1] = round(x+hsp) - (10 * incinRevOffset);
				other.burnTargetY[1] = round(y+vsp);
				other.burnSide[1] = incinRevOffset;
				other.doBurn = true;
			}
		}
	}
	if (doBurn == true) {
		if (burnType[1] > 0) {
			burnHitbox = create_hitbox(AT_DSPECIAL, burnType[1], burnTargetX[1], burnTargetY[1] - 40);
			myArrow = spawn_hit_fx (burnTargetX[1], burnTargetY[1] - 40, revArrow);	
			burnType[1] = 0;
		}
		doBurn = false;
	}
} else {
	if (doBurn == true) {
		for (i = 0; i < 4; i++) {
			if (burnType[i] > 0) {
				burnHitbox = create_hitbox(AT_DSPECIAL, burnType[i], burnTargetX[i], burnTargetY[i] - 40);
				//myArrow = spawn_hit_fx (burnTargetX[i], burnTargetY[i] - 40, revArrow);	
				//myArrow.draw_angle = get_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE) - 90;
				//myArrow.spr_dir = sign(burnSide[i]);
				burnType[i] = 0;
			}
			doBurn = false;
		}
	}
}

if ("target" in self) {
	with (target) {
		if (state == PS_DEAD || state == PS_RESPAWN) {
			x = room_width/2;
		}
		if (state == PS_DEAD || state == PS_RESPAWN || state == PS_WALL_TECH) {
			other.shouldQuit = 1;
		}
	}
	if (shouldQuit == 1) {
		//target = noone; //this might be causing issues i think
	}
}

if (phone_cheats[CHEAT_PERSIST] % 2 == 0) {
	if (revengeBuffer < 0) {
		revengeMult -= 0.0014;
	} else {
		revengeBuffer--;
	}
}
if (!has_rune("H")) {
    revengeMult = clamp(revengeMult, 1, 4);
} else {
    if (revengeMult < 1) {
        revengeMult = 1;
    }
}

if (!free || state == PS_WALL_JUMP) {
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
}

if (move_cooldown[AT_USPECIAL_2] > move_cooldown[AT_USPECIAL]) {
	move_cooldown[AT_USPECIAL] = move_cooldown[AT_USPECIAL_2];		
}


if (phone_cheats_updated[CHEAT_NONE] == 1) {
	phone_cheats_updated[CHEAT_NONE] = 0; // you have to reset it yourself
	with (obj_article1) {
		if (player_id = other.id) {
			state = 2;
			state_timer = 0;
		}
	}
}
if (phone_cheats_updated[CHEAT_CALM] == 1) {
	phone_cheats_updated[CHEAT_CALM] = 0; // you have to reset it yourself
	revengeMult = 1;
}

if (outlineDirection == 0) {
	outlineR += 6.3 * ((revengeMult * 1.3) - 0.5);
	outlineG += 0.9 * ((revengeMult * 1.3) - 0.5);
} else {
	outlineR -= 6.3 * ((revengeMult * 1.3) - 0.5);
	outlineG -= 0.9 * ((revengeMult * 1.3) - 0.5);
}
if (outlineR > 250) {
	outlineDirection = 1;
} else if (outlineR < 5) {
	outlineDirection = 0;
}

if (revengeMult > 1) {
	outline_color = [ outlineR, outlineG, outlineB ];
	initial_dash_speed = 7.5;
	dash_speed = 6.5;
	air_max_speed = 5;
	air_accel = .35;
} else {
	outline_color = [ 0, 0, 0 ];
	initial_dash_speed = 6.5;
	dash_speed = 5.75;
	air_max_speed = 4;
	air_accel = .3;
}

hue+=1;
if (hue>255) {
	hue-=255; 
}
for (i = 0; i < 4; i++) {
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	var col_R = get_color_profile_slot_r( 2, 3+i);
	var col_G = get_color_profile_slot_g( 2, 3+i);
	var col_B = get_color_profile_slot_b( 2, 3+i);
	color_rgb=make_color_rgb( col_R, col_G, col_B ); 
	color_hsv=make_color_hsv(hue - (10 * i),color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot( 24, 3+i ,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    if (get_player_color(player) == 24) {
        set_article_color_slot(3+i, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv), 1);
    }
}
init_shader();

if (revengeHitShakeFrames > 0) {
	shake_camera( 2+ round(clamp(revengeHitShakeFrames, 0, 20)/2), 2);
	revengeHitShakeFrames--;
}

set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, bufferNSpecPower);

if (triggerSafety > 0) {
	triggerSafety--;
} else if (triggerSafety > -100) {
	triggerSafety = -420;
	if (target != noone) {
		create_hitbox(AT_DTHROW, 3, round(target.x), round(target.y - 20));
		print("safety");
	}
}

if (state == PS_WALK && state_timer % 21 == 8) {
	sound_play(asset_get("sfx_land_light"), false, noone, 0.7, 1);	
}

if (state == PS_DASH && state_timer % 19 == 12) {
	sound_play(asset_get("sfx_land_light"), false, noone, 0.9, 1);	
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if (state == PS_SPAWN && should_do_intro == true) {
	if ("room_manager" in self) {in_adventure = true;}
	if (state_timer == 9 + (2*player)) {
		sound_play(asset_get("sfx_swipe_medium1"));
	}
	if (state_timer == 25 + (2*player)) {
		sound_play(asset_get("sfx_blow_medium1"));
	}
	if (state_timer == 34 + (2*player)) {
		myBurst = spawn_hit_fx (x, y-24, introBurst);	
		sound_play(sound_get("pokeball"), false, noone, 0.8, 1);
		sound_play(asset_get("sfx_jumpground"));
		myBurst.depth = -20;
	}
	if (state_timer == 70) {
		set_attack(AT_TAUNT);
	}
	
	if (state_timer < 42 + player) {
		draw_indicator = false;
	} else {
		draw_indicator = true;
	}
	char_height = 62 - draw_y;
} else if (state != 1) {
	should_do_intro = false;
}

if (revengeMult > 1) {
	flameBurstTimer += (revengeMult * 1.3);
	flameBurstTimer2 += power((revengeMult * 1.3), 1.5);
}
if (revengeHitShakeFrames > 0) {
	flameBurstTimer += 20;
	flameBurstTimer2 += 30;
}
if (get_player_color(player) == 24) {
	if (flameBurstTimer > 40) {
		flameBurstTimer -= 40;
		myBurst = spawn_hit_fx (x - 30 + random_func( 1, 60, false ), y - 60 + random_func( 2, 60, false ), flameR);	
		myBurst.depth = -20;
	}	
	if (flameBurstTimer2 > 160) {
		flameBurstTimer2 -= 160;
		myBurst = spawn_hit_fx (x - 30 + random_func( 3, 60, false ), y - 60 + random_func( 4, 60, false ), flameR2);	
		myBurst.depth = -20;
	}		
} else {
	if (flameBurstTimer > 40) {
		flameBurstTimer -= 40;
		myBurst = spawn_hit_fx (x - 30 + random_func( 1, 60, false ), y - 60 + random_func( 2, 60, false ), flame);	
		myBurst.depth = -20;
	}	
	if (flameBurstTimer2 > 160) {
		flameBurstTimer2 -= 160;
		myBurst = spawn_hit_fx (x - 30 + random_func( 3, 60, false ), y - 60 + random_func( 4, 60, false ), flame);	
		myBurst.depth = -20;
	}		
}	