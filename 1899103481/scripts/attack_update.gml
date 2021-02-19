//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// code is getting a bit crazy, forget this
if (window == 1 && window_timer == 1){
	attack_id++;
}

// if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer == 0) {
//     attack_id++;
// }

// var articlecount = 0;
// 	var article1 = noone;

// 	with(asset_get("obj_article1")){
// 		if (player_id == other.id){
// 			articlecount++;
// 			article1 = id;
// 		}
// 	}
	
// 	if (!instance_exists(article1)
// 	&& articlecount < 1){
// 			taunt_detonate = false;
// 	} else if (instance_exists(article1)
// 	&& articlecount > 0) {
// 		taunt_detonate = true;
// 	}

if (attack == AT_NSPECIAL){
    var articlecount = 0;
	var article1 = noone;
	


	with(asset_get("obj_article1")){
		if (player_id == other.id){
			articlecount++;
			article1 = id;
		}
	}
	if (articlecount < 1){
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, -6);
	}
	
	if (articlecount < 1
	|| (instance_exists(article1)
	&& article1.y > get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS)
	&& get_stage_data(SD_Y_POS) > 0)){
		if (window == 2 && window_timer == 5) {
			self.newMagmaBall = instance_create(x+42*spr_dir, y-44, "obj_article1");
			spawn_hit_fx(x-0*spr_dir, y-64, hit_fx_create(sprite_get("shoot_ball"), 10));
			newMagmaBall.hsp = 4 * spr_dir;
			newMagmaBall.vsp = -6
			
			if (up_down){
				newMagmaBall.hsp = 1 * spr_dir;
				newMagmaBall.vsp = -7;
			}
			else if (down_down){
				newMagmaBall.hsp = 7 * spr_dir;
				newMagmaBall.vsp = -2;
			}
			sound_play(asset_get("sfx_ell_big_missile_fire"));
			magnet = 30;
		}
	} else{
		// mad scientist experiment
		
		if (special_down && articlecount > 0){
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 6*signflipper);
		}
		if (special_down){
			if (articlecount > 0
			&& magnet == 0
			&& window == 3){
				with(article1){
					var dist = distance_to_object(player_id);
					if (dist > 128){
						projectile = true;
						var sp = point_direction(x, y, other.x, other.y);
						var dist = distance_to_object(player_id);
						hsp += lengthdir_x(2+dist/300, sp); //0.5 + .../300
						// vsp += lengthdir_y(0.2+dist/1200, sp);	
					} else if (dist > 32){
						projectile = true;
						var sp = point_direction(x, y, other.x, other.y);
						var dist = distance_to_object(player_id);
						hsp += lengthdir_x(0.3+dist/90, sp);
						// vsp += lengthdir_y(0.2+dist/500, sp);	
					}
				}
			} else if (articlecount > 0 && magnet == 0){
				if (nspec_sound_timer == 0){
					with (article1){
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
	if (nspec_sound_timer == 0){
		sound_stop(asset_get("sfx_ori_charged_flame_hit"));
	}

    if (!free && (x-24 < stage_x || x+24 > room_width - stage_x)){
    	hsp = 0;
    }
    if (window == 3){
    	can_jump = true;
    	if (special_down){
    		window_timer = 1;
    	}
		if (window_timer > 8){
			can_attack = true;
			
		}
    }
    move_cooldown[AT_NSPECIAL] = 12;
}

if (attack == AT_USPECIAL){
    var articlecount = 0;
	var article1 = noone;

	with(asset_get("obj_article1")){
		if (player_id == other.id){
			articlecount++;
			article1 = id;
		}
	}
	
	if (window == 2 && window_timer == 1){
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("upspecial_smoke"), 12));
	}
	
    if (window == 2 && window_timer == 5){
        if (articlecount == 0){
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
			vsp = -10;	
				
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
    var articlecount = 0;
	var article3 = noone;

	with(asset_get("obj_article3")){
		if (player_id == other.id){
			articlecount++;
			article3 = id;
		}
	}
	var stage_y = get_stage_data(SD_Y_POS);
	
    if (window == 2 && window_timer == 1){
        if ((spr_dir == -1 && right_down)
        || (spr_dir == 1 && left_down)){
		    hsp *= -1;
		    vsp = -7;
        }
        if (articlecount > 0){
            with (article3) { 
                lifespan = 0; // because that #@$%!ng instance_destroy doesn't work here
            }
        }
        	xPos = x-24*spr_dir;
        spawn_hit_fx(xPos, 0, hit_fx_create(sprite_get("lava_platform_create"), 20));
    }
    if (window == 3 && window_timer == 1){
    	var lavaBlock = instance_create(xPos, 0, "obj_article3"); 
    	lavaBlock.depth = 12;
    	lavaBlock.image_alpha = 0.7;
    	lavaBlock.image_speed = 0.5;
    }
    move_cooldown[AT_FSPECIAL] = 60;
}

// idea: make aerial Dspecial a slam dunk spike
if (attack == AT_DSPECIAL){
    var articlecount = 0;
	var article2 = noone;

	with(asset_get("obj_article2")){
		if (player_id == other.id){
			articlecount++;
			article2 = id;
		}
	}

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

        if (window == 2 && window_timer == 12){
            if (left_down){
                turret_angle = 45;
            } else if (right_down) {
                turret_angle = 315;
            } else{
                turret_angle = 0;
            }
            // xAdjusted = x+50*spr_dir;
            // xThreshold = x+24*spr_dir;
			
			if (position_meeting(xThreshold, y+4, asset_get("par_block"))
			|| position_meeting(xThreshold, y+4, asset_get("par_jumpthrough"))){
				if (articlecount > 0){
					with (article2) { 
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

if (attack == AT_JAB && was_parried){
	was_parried = false;
}

if (attack == AT_NAIR){
	var sliding = false;
	// sprite_change_offset("nair", 64, 96);
	set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);

	
    // set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -17);
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
		
		// set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
		// set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
		if (attack_down){
			sliding = true;
			
			// sprite_change_offset("nair", 64, 80);
			// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -38);
			set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 35);

			if (window == 2){
				hsp = 0.25*(abs(AG_WINDOW_LENGTH - window_timer)*spr_dir);
				if (has_hit && window_timer > 10){
					can_jump = true;
				}
			}
		} else{
			// if not holding attack
			// window = 2;
			window_timer += 2;
		}
    } else{
		// sprite_change_offset("nair", 64, 96);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -16);
		// set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_air"));
		// set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_air_hurt"));
	}
		

	
	if (window == 3 && sliding){
		can_create_hitbox = true;
        can_jump = true;
		can_attack = true;
		set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 9);
		// hsp += 0.3*spr_dir*(abs(AG_WINDOW_LENGTH - window_timer));
    }
    
    // maybe for if I have some interesting ideas
    // if (window == 2 && window_timer > 3 && jump_pressed){
    //     can_jump = true;
    // }
}

if (attack == AT_UAIR){

	if (window == 1 && window_timer == 1){
		sound_play(asset_get("sfx_holy_tablet_appear"));
	}
	
	if (!attack_down || !free){
		sound_stop(asset_get("sfx_holy_tablet_appear"));
	}
	
	if(window == 1 && window_timer > 11){

		if (attack_down && uair_charge < 30){
			window = 1;
			window_timer = 14;
			uair_charge++;
			
			if (uair_charge % 6 == 0){
				// spawn_hit_fx(x, y-48, hit_fx_create(sprite_get("turret_proj_boosted"), 3));
				var flash = spawn_hit_fx(x+round(hsp), y+round(vsp), hit_fx_create(sprite_get("uairflash"), 3));
				flash.depth = -1000;

			} 
		}else{
			window = 3;
			window_timer = 1;
			set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6 + round(uair_charge/8));
			set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6 + round(uair_charge/7));
			if (uair_charge > 24){
				set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 22);
				set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
			}
			else{
				set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
			}
		}
	}
}
    
if (attack == AT_DATTACK){

	// maybe later...
	// if (window == 2){
		// dattack_timer++;
	// }
	// set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8);
	// set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5);
	// set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 1);
	
	// set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
	
	// if (window == 2 && attack_down){
		// if (dattack_timer < 45 && dattack_timer > 0){
			// set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8+dattack_timer);
			// set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 20); // uncomment as soon as I understand looping frames
			// window_timer--;
			// set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

			// set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 60);		
			// set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, (45-dattack_timer)/6);
			// set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
		// }else{
			// window = 3;
			// window_timer = 2;
		// }
	// }
	
	// if (window == 3){
		// dattack_timer = 0;
	// }
	
    if (window == 3 && has_hit){
        can_jump = true;
        can_attack = true;
    }
	
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
			var magma_puddle = create_hitbox(AT_DTILT, 2, x+66*spr_dir, y);
			magma_puddle.timer = 0;
			// with (magma_puddle){
				// other.vsp = -9;
				// other.hsp = -11*other.spr_dir;
			// }
		}
    }
}

if (attack == AT_USTRONG){
move_cooldown[AT_USTRONG] = 30;
	if (window == 1){
            if (left_down){
                set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -2*spr_dir);
            } else if (right_down) {
                set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 2*spr_dir);
            } else{
                set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 0);
            }
	}
	set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -(12+floor(strong_charge/6)));
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6+floor(strong_charge/10));
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5+floor(strong_charge/10));
	
	if (strong_charge >= 30){
		// set sprite to more powerful splosh
	}
}

    
// mad scientist experiment
if (attack == AT_TAUNT){
	var articlecount = 0;
var article1 = noone;

with(asset_get("obj_article1")){
	if (player_id == other.id){
		articlecount++;
		article1 = id;
	}
}
	
	if (window == 3 && window_timer == 4){
		if (instance_exists(article1)
		&& articlecount > 0){
			with(article1){
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