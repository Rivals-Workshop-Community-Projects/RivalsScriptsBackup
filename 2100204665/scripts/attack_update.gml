var bomb_out = false;

with(orb){
    if (player_id == other.id){
        bomb_out = true;
    }
}


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (instance_exists(orb) && attack == AT_NSPECIAL && window == 1 && window_timer == 4){
	with(orb){
		if (player_id == other){
	spawn_hit_fx( floor(x-4), floor(y-34), 256 );
    sound_play(asset_get("sfx_clairen_tip_med"));
	instance_destroy(id);
		}
	}
}

if (has_rune("L") && move_cooldown[AT_DSPECIAL] == 0){
	if (attack == AT_USTRONG){
		if (window == 1 && instance_exists(bones)){
			with (bones){
				state = 3;
				state_timer = 0;
			}
		}
		if (window == 2 && window_timer == 1){
			bones = instance_create(x, y, "obj_article1");
			with (bones){
				x = x-(82*spr_dir);
			}
		}
	}
}

if (attack == AT_NSPECIAL_2 && window == 2 && window_timer == 1){
    with orb{
        if (player_id == other.id){
            article_animation_frame = 3;
        }
    }
}

if (has_rune("I")){
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
	set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 5);
}

if (bomb_out == true){
	move_cooldown[AT_NSPECIAL] = 5;
}
if (bomb_out == false){
	move_cooldown[AT_NSPECIAL] = 0;
}

if (has_rune("A")){
	set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 40);
	set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2 );
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("sfx_monsterhit"));
}

if (attack == AT_FSPECIAL && window == 2 && window_timer == 2){
	sound_play(sound_get("sfx_alert"));
}

if (can_blue == false){
    set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 7);
    set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 120);
	set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 120);
    set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(AT_EXTRA_1, 1, HG_EFFECT, 11 );
    set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, .4);
    if (has_rune("M")){
    	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
    	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 30);
    	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_EXTRA_1, 1, HG_EFFECT, 11 );
    }
}

if (can_blue == true){
	move_cooldown[AT_FSPECIAL] = 0;
	set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 40);
	set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 40);
	set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0 );
	set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .2);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_EXTRA_1, 1, HG_EFFECT, 0 );
	set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, .3);
	if (has_rune("M")){
    	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 9);
    	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 7);
    }
}

if (has_rune("H")){
	set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
}

if (attack == AT_UTILT){
    if (window == 2){
    	if (has_hit){
    		can_jump = true;
    	}
        if (has_hit_player){
            hit_player_obj.x = ease_linear(hit_player_obj.starting_x_pos, x + ((get_hitbox_value(AT_UTILT,2,HG_HITBOX_X)-5)*spr_dir), window_timer, 15);
            hit_player_obj.y = ease_linear(hit_player_obj.starting_y_pos, y + ((get_hitbox_value(AT_UTILT,2,HG_HITBOX_Y))), window_timer, 15);
        }
    }
}

if (attack == AT_DTILT){
    if (window == 1 and window_timer == 2){
        sound_play(sound_get("sfx_alert"));
    }
}

if (attack == AT_USPECIAL) {
	bone_useable = false;
	if (window == 2 && window_timer == 2 && bone == noone)
	{
		if (free == false){
			bone = instance_create(x,y - 100,"obj_article_platform");
		}
		else
		bone = instance_create(x,y,"obj_article_platform");
		bone.depth = depth-0;
		bone.sprite_index = sprite_get("boneplat");
		bone.mask_index = sprite_get("bonemask");
		bone.image_speed = 1;
		bone.can_be_grounded = false;
		bone.ignores_walls = true;
		bone.free = true;
		bone.weight = 1;
		bone.hitboxed = 0;
		bone.hsp = 0;
		bone.vsp = 0;
		if (has_rune("C")){
			bone.vsp = -1;
		}

		bone.time = 0;

		sound_play(sound_get("sfx_ping"));

		hsp = 0;
		if (can_blue == false){
			bone.vsp = -1;
			if (has_rune("C")){
				bone.vsp = -2;
			}
		}

	}
}

if (has_rune("D")){
	set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, -3.5);
	
	set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
	set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
	set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
	set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 9);
	set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -45);
	set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 77);
	set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 74);
	set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
	set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 4);
	set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 270);
	set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 197);
}

if (has_rune("E")){
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 30);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 24);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
}

if (has_rune("F")){
	if (attack == AT_DATTACK){
	if (window == 1){
		super_armor = true;
		}
	if (window == 3 && super_armor == true){
		super_armor = false;
	}
	}
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 2){
        if (instance_exists(bones)){
            with (bones){
                state = 3;
                state_timer = 0;
            }
        }
    }
    if (window == 3 && window_timer == 6){
        bones = instance_create(x, y, "obj_article1");
        hit_timer = 200;
    }
    can_fast_fall = false;
    can_move = false;
}


if (has_rune("K")){
	set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 6);
	
	set_num_hitboxes(AT_DTILT,2);
}

if (has_rune("N")){
	set_num_hitboxes(AT_FTILT, 10);
	
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FTILT, 7, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FTILT, 8, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FTILT, 9, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FTILT, 10, HG_VISUAL_EFFECT, 1);
	
	set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 4);
	set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 4, HG_TECHABLE, 0);
	set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 40);
	set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -80);
	set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 1);
	set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 25);
	set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_FTILT, 4, HG_FINAL_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_MASK, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_HSPEED, 1.5);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 4, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_LOCKOUT, 2);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
	
	set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 5);
	set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 5, HG_TECHABLE, 0);
	set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 40);
	set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -80);
	set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 1);
	set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 25);
	set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_FTILT, 5, HG_FINAL_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_MASK, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_HSPEED, 1.5);
	set_hitbox_value(AT_FTILT, 5, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 5, HG_HIT_LOCKOUT, 2);
	set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
	
	set_hitbox_value(AT_FTILT, 6, HG_PARENT_HITBOX, 5);
	set_hitbox_value(AT_FTILT, 6, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 6, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 6, HG_TECHABLE, 0);
	set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 40);
	set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -80);
	set_hitbox_value(AT_FTILT, 6, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 6, HG_DAMAGE, 1);
	set_hitbox_value(AT_FTILT, 6, HG_ANGLE, 25);
	set_hitbox_value(AT_FTILT, 6, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_FTILT, 6, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_FTILT, 6, HG_FINAL_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FTILT, 6, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_FTILT, 6, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT_X_OFFSET, 16);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_MASK, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_HSPEED, 1.5);
	set_hitbox_value(AT_FTILT, 6, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 6, HG_HIT_LOCKOUT, 2);
	set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
	
	set_hitbox_value(AT_FTILT, 7, HG_PARENT_HITBOX, 5);
	set_hitbox_value(AT_FTILT, 7, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 7, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_FTILT, 7, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 7, HG_TECHABLE, 0);
	set_hitbox_value(AT_FTILT, 7, HG_LIFETIME, 40);
	set_hitbox_value(AT_FTILT, 7, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FTILT, 7, HG_HITBOX_Y, -80);
	set_hitbox_value(AT_FTILT, 7, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 7, HG_DAMAGE, 1);
	set_hitbox_value(AT_FTILT, 7, HG_ANGLE, 25);
	set_hitbox_value(AT_FTILT, 7, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_FTILT, 7, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_FTILT, 7, HG_FINAL_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FTILT, 7, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_FTILT, 7, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_FTILT, 7, HG_VISUAL_EFFECT_X_OFFSET, 16);
	set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_MASK, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_HSPEED, 1.5);
	set_hitbox_value(AT_FTILT, 7, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 7, HG_HIT_LOCKOUT, 2);
	set_hitbox_value(AT_FTILT, 7, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
	
	set_hitbox_value(AT_FTILT, 8, HG_PARENT_HITBOX, 5);
	set_hitbox_value(AT_FTILT, 8, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 8, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_FTILT, 8, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 8, HG_TECHABLE, 0);
	set_hitbox_value(AT_FTILT, 8, HG_LIFETIME, 40);
	set_hitbox_value(AT_FTILT, 8, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FTILT, 8, HG_HITBOX_Y, -80);
	set_hitbox_value(AT_FTILT, 8, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 8, HG_DAMAGE, 1);
	set_hitbox_value(AT_FTILT, 8, HG_ANGLE, 25);
	set_hitbox_value(AT_FTILT, 8, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_FTILT, 8, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_FTILT, 8, HG_FINAL_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FTILT, 8, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_FTILT, 8, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_FTILT, 8, HG_VISUAL_EFFECT_X_OFFSET, 16);
	set_hitbox_value(AT_FTILT, 8, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 8, HG_PROJECTILE_MASK, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 8, HG_PROJECTILE_HSPEED, 1.5);
	set_hitbox_value(AT_FTILT, 8, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_FTILT, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 8, HG_HIT_LOCKOUT, 2);
	set_hitbox_value(AT_FTILT, 8, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
	
	set_hitbox_value(AT_FTILT, 9, HG_PARENT_HITBOX, 5);
	set_hitbox_value(AT_FTILT, 9, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 9, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_FTILT, 9, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 9, HG_TECHABLE, 0);
	set_hitbox_value(AT_FTILT, 9, HG_LIFETIME, 40);
	set_hitbox_value(AT_FTILT, 9, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FTILT, 9, HG_HITBOX_Y, -80);
	set_hitbox_value(AT_FTILT, 9, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 9, HG_DAMAGE, 1);
	set_hitbox_value(AT_FTILT, 9, HG_ANGLE, 25);
	set_hitbox_value(AT_FTILT, 9, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_FTILT, 9, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_FTILT, 9, HG_FINAL_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FTILT, 9, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_FTILT, 9, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_FTILT, 9, HG_VISUAL_EFFECT_X_OFFSET, 16);
	set_hitbox_value(AT_FTILT, 9, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 9, HG_PROJECTILE_MASK, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 9, HG_PROJECTILE_HSPEED, 1.5);
	set_hitbox_value(AT_FTILT, 9, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_FTILT, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 9, HG_HIT_LOCKOUT, 2);
	set_hitbox_value(AT_FTILT, 9, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
	
	set_hitbox_value(AT_FTILT, 10, HG_PARENT_HITBOX, 5);
	set_hitbox_value(AT_FTILT, 10, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 10, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_FTILT, 10, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 10, HG_TECHABLE, 0);
	set_hitbox_value(AT_FTILT, 10, HG_LIFETIME, 40);
	set_hitbox_value(AT_FTILT, 10, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FTILT, 10, HG_HITBOX_Y, -80);
	set_hitbox_value(AT_FTILT, 10, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 10, HG_DAMAGE, 1);
	set_hitbox_value(AT_FTILT, 10, HG_ANGLE, 25);
	set_hitbox_value(AT_FTILT, 10, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_FTILT, 10, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_FTILT, 10, HG_FINAL_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FTILT, 10, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_FTILT, 10, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_FTILT, 10, HG_VISUAL_EFFECT_X_OFFSET, 16);
	set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_MASK, sprite_get("ftilt_proj"));
	set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_HSPEED, 1.5);
	set_hitbox_value(AT_FTILT, 10, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 10, HG_HIT_LOCKOUT, 2);
	set_hitbox_value(AT_FTILT, 10, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
}