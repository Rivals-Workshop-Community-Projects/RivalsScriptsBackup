//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// jab parry fix
if (attack == AT_JAB){
	if (was_parried){
		was_parried = false;
	}
	move_cooldown[AT_JAB] = 5;
}


// code is getting a bit crazy, forget this
if (window == 1 && window_timer == 1){
	attack_id++;
}

if (attack == AT_NSPECIAL){
	if (article_1_count < 1){
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, -6);
	}
	
	if (article_1_count < 1 || article_below_blastzone(article_1)){
		if (window == 2){
			if (window_timer == 4) {
				self.newMagmaBall = instance_create(x+42*spr_dir, y-44, "obj_article1");
				spawn_hit_fx(x-0*spr_dir, y-64, hit_fx_create(sprite_get("shoot_ball"), 10)); // todo: hit_fx_create
				newMagmaBall.hsp = 2 * spr_dir;
				newMagmaBall.vsp = -3
				
				if (up_down){
					newMagmaBall.hsp = 1 * spr_dir;
					newMagmaBall.vsp = -7;
				}
				else if (down_down){
					newMagmaBall.hsp = 7 * spr_dir;
					newMagmaBall.vsp = -2;
				}
				sound_play(asset_get("sfx_ell_big_missile_fire"), 0, noone, 0.7, 0.9);
				// sound_play(asset_get("sfx_ori_grenade_hit_ground"), 0, noone, 0.6, 1.9);
				sound_play(asset_get("sfx_ell_fist_fire"), 0, noone, 0.8, 1.5);
				magnet = 30;
			}

		} // magnet window

	}
	if (window == 3 && special_down){
		window_timer = 1;
	}
		
	if (nspec_sound_timer == 0){
		sound_stop(asset_get("sfx_ori_charged_flame_hit"));
	}
	
	prevent_sliding_off_stage();
    move_cooldown[AT_NSPECIAL] = 12;
}
// NSPECIAL MAGNET PULL
if (attack == AT_NSPECIAL_2){
	if (special_down){
		nspec_hold_timer++;
		if (article_1_count > 0){
			set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, 6*signflipper);
		}
	}
	
    if (window == 2){
    	can_jump = true; 
		if (special_down && window_timer > 6){ // ??? this code sucks
			window_timer = 6; 
		}
		if (window_timer > 7){ can_attack = true; }
		
		if (special_down){
			if (article_1_count > 0
			&& magnet == 0){
				with(article_1){
					// MAGNET PULL FAR AWAY
					if (distance_to_object(player_id) > 128){
						pull_towards_player(3, 100, 10);
					// MAGNET PULL CLOSE
					} else if (distance_to_object(player_id) > 32){
						pull_towards_player(2, 60, 10);
					}
				}
				if (nspec_sound_timer == 0){
					with (article_1){
						spawn_hit_fx(x, y, 301);
					}
					spawn_hit_fx(x+36*spr_dir, y-40, 301);
					sound_play(asset_get("sfx_ori_charged_flame_hit"));
					nspec_sound_timer = 999;
				}
			}
		} else{
			nspec_sound_timer = 0;
		}
	}
	
	tap_detonate(); // boom whenever tapped nspecial
}


if (attack == AT_USPECIAL){
	if (window == 2 && window_timer == 1){
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("upspecial_smoke"), 12));
	}
	
    if (window == 2 && window_timer == 2){ // todo: tweak window_timer
        if (article_1_count == 0){
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
			vsp = -6;	
				
			self.newMagmaBall = instance_create(x, y-30, "obj_article1");
			spawn_hit_fx(x, y, hit_fx_create(sprite_get("magma_explosion"), 10));
			// newMagmaBall.ballHitbox = create_hitbox(AT_EXTRA_1, 1, newMagmaBall.x, newMagmaBall.y);
			newMagmaBall.hsp = 0;
			newMagmaBall.vsp = 10;
			sound_play(asset_get("sfx_ell_explosion_medium"));
		} else {
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
		}
    }
    move_cooldown[AT_USPECIAL] = 9999;
}

if (attack == AT_FSPECIAL){
	strong_down = special_down;
	var stage_y = get_stage_data(SD_Y_POS);
	
	if (window == 1 && free){// freeze timer until ground contact
		if (window_timer == 4){
			vsp = -2;
		}
		if (window_timer > 10){
			window_timer = 11;
			if (has_airdodge){ can_shield = true; }
		} 
	} else if (window == 1 && window_timer == 15) {
		sound_play(asset_get("sfx_blow_heavy2"));
	}
	
    if (window == 2 && window_timer == 0){
        if (article_3_count > 0){
            with (article_3) { 
                lifespan = 0; // because that #@$%!ng instance_destroy doesn't work here
            }
        }
        xPos = x-24*spr_dir; // unused??
    }
    
    // var turret_interval = 10; // turret x offset added per frame
    // var turret_offset = 32 + spr_dir * strong_charge * 15
    // var turret_offset = floor(spr_dir * lerp(strong_charge*turret_interval, 60*turret_interval, 0.5)) //uhh
    // var turret_offset = 32 + spr_dir * ease_sineOut(a,b,strong_charge * 15, 60 * 15) //uhh
    // var turret_offset = floor(spr_dir * 0.7*(power(strong_charge, 1.8))) // slow start, grows faster
    // var turret_offset = floor(spr_dir * 50*(power(strong_charge, 0.6))) // fast start, grows slower
    var turret_offset = floor(spr_dir * (32+(2.5*(power(strong_charge, 1.5))))) // testestsetset
    if (window == 2 && strong_charge > 0 && strong_charge % 4 == 0){
		if (!checkFreeAtPos(x+turret_offset+spr_dir*64, y+4)){ //spr_dir*32
	    	spawn_hit_fx(x + turret_offset, y, lava_platform_aim);
	    	sound_play(asset_get("sfx_kragg_rock_shatter"));
    	} else{
    		window = 3;
    		window_timer = 1;
    		strong_down = false; // lol why does this even work
    	}
    }
    // PILLAR CREATION
    if (window == 3 && window_timer == 1){
    	if (!checkFreeAtPos(x + spr_dir*32, y)){ // pillar needs solid ground below it
	    	sound_play(asset_get("sfx_forsburn_combust"));
	    	if (article_3_count > 0){
	    		 with (article_3) { 
	                lifespan = 0; // because that #@$%!ng instance_destroy doesn't work here
	            }
	    	}
	    	var lavaBlock = instance_create(x + turret_offset + spr_dir*64, y, "obj_article3"); // x instead of xPos now
    	}
    }
    move_cooldown[AT_FSPECIAL] = 30;
}

// todo: decide between Dspecial air as slam dunk or as just dropping the lava 
if (attack == AT_DSPECIAL){
    if(free){
        set_attack(AT_DSPECIAL_AIR);
    }else{
		var xAdjusted = x+50*spr_dir;
        var xThreshold = x+24*spr_dir;

		if (window == 1 && window_timer == 5){
			xAdjusted = x+50*spr_dir;
            xThreshold = x+24*spr_dir;
		
			if (position_meeting(xThreshold, y+4, asset_get("par_block"))
			|| position_meeting(xThreshold, y+4, asset_get("par_jumpthrough"))){
				sound_play(asset_get("sfx_syl_dstrong"));
			} else{
				sound_play(asset_get("sfx_kragg_throw"));
			}
		}

        if (window == 2 && window_timer == 10){
            if (left_down){
                turret_angle = 45;
            } else if (right_down) {
                turret_angle = 315;
            } else{
                turret_angle = 0;
            }
			
			if (position_meeting(xThreshold, y+4, asset_get("par_block"))
			|| position_meeting(xThreshold, y+4, asset_get("par_jumpthrough"))){
				if (article_2_count > 0){
					with (article_2) { 
						lifetime = 0;
					}
				}
				var turret = instance_create(xAdjusted, y, "obj_article2");
				turret.turret_angle = turret_angle;
				if (turret_angle = 45){
					turret.sprite_index = sprite_get("dspecial_turret_angled");
					turret.image_xscale = -1;
				}else if(turret_angle = 315){
					turret.sprite_index = sprite_get("dspecial_turret_angled");
				}
			}
        }
    }
}

if attack == AT_DSTRONG{
	if ((window == 3 && window_timer % 6 == 0 && window_timer < 16)
	|| (window == 2 && window_timer == 4)){
		// if (oPlayer.state_cat != SC_HITSTUN){
		if (!sound_already_played_this_frame){
			if	(state_timer_prev != state_timer){
				sound_play(asset_get("sfx_ori_stomp_spin"));
			}
		}
	}
}

if (attack == AT_NAIR){
	var sliding = false;
	set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);

    if (!free){
		if (window == 2 && window_timer > 12 && can_create_hitbox){
			create_hitbox(AT_NAIR, 2, x, y);
			can_create_hitbox = false;
		}
		can_move = true; //test tes
		
		if (window == 2 && window_timer > 9
		|| window == 3){
			can_attack = true;
			can_jump = true;
		}
		
		if (attack_down){
			sliding = true;
			set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 20); //tweak this for balance probably

			if (window == 2){
				hsp += spr_dir * (900-window_timer*window_timer) / 1800
				hsp = clamp(hsp, -9, 9);
				if (has_hit && window_timer > 15){
					can_jump = true;
				}
			}
		} else{
			// if not holding attack
			// window = 2;
			window_timer += 2;
		}
    } else{ // if free
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -26);
	}
		
	if (window == 3 && sliding){
		can_create_hitbox = true;
        can_jump = true;
		can_attack = true;
		set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 9);
    }
    
    // maybe for if I have some interesting ideas
    // if (window == 2 && window_timer > 3 && jump_pressed){
    //     can_jump = true;
    // }
}

if (attack == AT_DTILT){
    if (window == 2 && window_timer == 1){
        with (pHitBox){
        	if (attack == AT_DTILT
			&& player_id == other.id){
        		destroyed = true;
        	}
        }
		if (spr_dir == 1 && !checkRightFree()
		|| spr_dir == -1 && !checkLeftFree()){
			var magma_puddle = create_hitbox(AT_DTILT, 2, x+86*spr_dir, y);
			magma_puddle.timer = 0;
		}
    }
}

if (attack == AT_USTRONG){
	move_cooldown[AT_USTRONG] = 45;
	
	if (window == 1){
            if (left_down){
            	ustrong_hsp = -2
            } else if (right_down) {
                ustrong_hsp = 2
            } else{
                ustrong_hsp = 0;
            }
	}
	ustrong_vsp = -(10+floor(strong_charge/7));
	// set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6+floor(strong_charge/10)); // shoots magma ball now
	// set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5+floor(strong_charge/10));
	
	// if (strong_charge >= 30){
		// set sprite to more powerful splosh // uh nvm I already did that somewhere
	// }
	
	if (window == 1 && window_timer == 16){
		if (article_1_count == 0){
			sound_play(asset_get("sfx_ell_fist_fire"));
		}
	}	
	
    if (window == 2 && window_timer == 6){
        if (article_1_count == 0){
			self.newMagmaBall = instance_create(x, y-32, "obj_article1");
			spawn_hit_fx(x, y, hit_fx_create(sprite_get("magma_explosion"), 10));
			// newMagmaBall.ballHitbox = create_hitbox(AT_EXTRA_1, 1, newMagmaBall.x, newMagmaBall.y);
			newMagmaBall.hsp = ustrong_hsp;
			newMagmaBall.vsp = ustrong_vsp;

		}
    }
}

if (attack == AT_FSTRONG){
	if (has_hit && !fstrong_sound_has_played){
		sound_play(asset_get("sfx_ell_utilt_cannon"))
		fstrong_sound_has_played = true;
	}
}

    
// boom
if (attack == AT_TAUNT){
	if (window == 3 && window_timer == 4){
		if (instance_exists(article_1)
		&& article_1_count > 0){
			with(article_1){
				spawn_hit_fx(x, y, hit_fx_create(sprite_get("ball_explode"), 12));
				create_hitbox(AT_TAUNT, 1, x, y);
				sound_play(asset_get("sfx_absa_uair"));
				ready_to_destroy = true;
			}
			
		}
	}
	move_cooldown[AT_TAUNT] = 20;
}

if (attack == AT_TAUNT_2){
	if (window_timer > 30){
		can_move = true;
		can_jump = true;
		can_attack = true;
	}
}

#define article_below_blastzone(article_object) // arg should be an article object
	if (instance_exists(article_object)
	&& article_object.y > get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS)
	&& get_stage_data(SD_Y_POS) > 0){
		return true;
	}
	return false;

#define get_article(article_object) // arg should be string, ex. "obj_article1"
	var article_count = get_article_count(article_object);

	if (article_count > 0){
		with(asset_get(article_object)){
			if (player_id == other.id){
				return id;
			}
		}
	} return noone;
	
#define get_article_count(article_object) // arg should be string, ex. "obj_article1"
	var count = 0;
		with(asset_get(article_object)){
			if (player_id == other.id){
				count++;
			}
		}
	return count;
#define checkLeftFree
if (!position_meeting(x-40, y+4, asset_get("par_block"))
&& !position_meeting(x-40, y+4, asset_get("par_jumpthrough"))){
	return true;
}
#define checkRightFree
if (!position_meeting(x+40, y+4, asset_get("par_block"))
&& !position_meeting(x+40, y+4, asset_get("par_jumpthrough"))){
	return true;
}
#define checkFreeAtPos(xpos, ypos)
if (!position_meeting(xpos, ypos, asset_get("par_block"))
&& !position_meeting(xpos, ypos, asset_get("par_jumpthrough"))){
	return true;
}
#define prevent_sliding_off_stage()
	if (!free && (x-24 < stage_x || x+24 > room_width - stage_x)){
		hsp = 0;
    }
#define pull_towards_player(base_speed, slowing_factor, clamp_speed) // arg0 = number, arg1 = number, arg2 = number
	// function only works from article perspective
	projectile = true;
	var sp = point_direction(x, y, other.x, other.y);
	hsp += lengthdir_x(base_speed+distance_to_object(player_id)/slowing_factor, sp); 
	hsp = clamp(hsp, -clamp_speed, clamp_speed);
#define tap_detonate()
	if (!special_down && nspec_hold_timer < 10 && magnet == 0 && get_article_count("obj_article1") > 0){
		nspec_hold_timer = 0;
		attack = AT_TAUNT; //kaboom
	}
