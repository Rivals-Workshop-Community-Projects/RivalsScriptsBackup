//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL_2 && window == 2 && window_timer == 1){
    with orb{
        if (player_id == other.id){
            article_animation_frame = 3;
        }
    }
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

if (attack == AT_DATTACK) {
    if (window == 1){
super_armor = true
    }
}
if (attack == AT_DATTACK) {
    if (window == 2){
super_armor = true
    }
}
if (attack == AT_DATTACK) {
    if (window == 3){
super_armor = false
    }
}

if (attack == AT_DSTRONG) {
    if (window == 4){
super_armor = true
    }
}
if (attack == AT_DSTRONG) {
    if (window == 5){
super_armor = true
    }
}
if (attack == AT_DSTRONG) {
    if (window == 6){
super_armor = false
    }
}


if (attack == AT_FSTRONG) {
    if (window == 1){
super_armor = true
    }
}
if (attack == AT_FSTRONG) {
    if (window == 2){
super_armor = false
    }
}
if (attack == AT_FSTRONG) {
    if (window == 3){
super_armor = true
    }
}
if (attack == AT_FSTRONG) {
    if (window == 4){
super_armor = false
    }
}

if (attack == AT_USTRONG) {
    if (window == 3){
super_armor = true
    }
}
if (attack == AT_USTRONG) {
    if (window == 4){
super_armor = true
    }
}
if (attack == AT_USTRONG) {
    if (window == 5){
super_armor = true
    }
}
if (attack == AT_USTRONG) {
    if (window == 6){
super_armor = false
    }
}
if (attack == AT_USTRONG) {
    if (window == 7){
super_armor = false
    }
}

if (attack == AT_FTILT) {
    if (window == 4){
super_armor = true
    }
}
if (attack == AT_FTILT) {
    if (window == 5){
super_armor = false
    }
}

if (attack == AT_DTILT) {
    if (window == 5){
super_armor = true
    }
}
if (attack == AT_DTILT) {
    if (window == 4){
super_armor = true
    }
}
if (attack == AT_DTILT) {
    if (window == 3){
super_armor = true
    }
}
if (attack == AT_DTILT) {
    if (window == 6){
super_armor = false
    }
}


if (attack == AT_USTRONG_2) {
    if (window >= 1 && window <= 3){
        hsp = 0;
        vsp = 0;
        can_move = false;
    }
    if (window == 4){
        if(!joy_pad_idle){
            teleport_sp = -64;
            vsp = (dsin(joy_dir)*teleport_sp);
            hsp = (dcos(joy_dir)*-teleport_sp);
        }
    }
    if (window == 5){
    	if (window_timer == 10) {
    		if (free) { state = PS_PRATFALL; }
    		
    	}
        hsp = 0;
        vsp = 0;
        can_wall_jump = true;
    }
}

if (attack == AT_FSTRONG_2){
    if (window == 1){
        if window_timer == 1 {
        	move_cooldown[AT_TAUNT] = 100;
		}
	}
}


if (attack == AT_DSPECIAL){
    if (window == 1){
        if window_timer == 4 {
        	move_cooldown[AT_DSPECIAL] = 300;
		}
	}
}

if (attack == AT_DAIR){
    if (window == 1){
        if window_timer == 5 {
        	move_cooldown[AT_DAIR] = 300;
		}
	}
}

if (attack == AT_FSPECIAL){
    if (window == 1){
        if window_timer == 4 {
        	move_cooldown[AT_FSPECIAL] = 300;
		}
	}
}

if (attack == AT_USTRONG_2){
    if (window == 1){
        if window_timer == 1 {
        	move_cooldown[AT_TAUNT] = 300;
			move_cooldown[AT_USTRONG_2] = 300;
		}
	}
}

if (attack == AT_DSTRONG){
    if (window == 1){
        if window_timer == 1 {
        	move_cooldown[AT_DSTRONG] = 200;
		}
	}
}

if (attack == AT_FSTRONG_2){
    if (window == 1){
        if window_timer == 1 {
        	move_cooldown[AT_FSTRONG_2] = 300;
			move_cooldown[AT_TAUNT] = 300;
		}
	}
}

if (attack == AT_TAUNT_2){
    if (window == 1){
        if window_timer == 1 {
        	move_cooldown[AT_TAUNT_2] = 300;
			move_cooldown[AT_TAUNT] = 300;
		}
	}
}

if (attack == AT_TAUNT){
    if (window == 1){
        if window_timer == 1 {
        	move_cooldown[AT_FSTRONG_2] = 300;
			move_cooldown[AT_USTRONG_2] = 300;
			move_cooldown[AT_TAUNT_2] = 300;
			move_cooldown[AT_TAUNT] = 300;
		}
	}
}


if (attack == AT_FAIR){
    if (window == 1){
        if window_timer == 9 {
			move_cooldown[AT_FAIR] = 290;
		}
	}
}

if (attack == AT_USPECIAL){
    if (window == 1){
        if window_timer == 3 {
        	move_cooldown[AT_USPECIAL] = 200;
		}
	}
}

switch (attack)
{
    case AT_FSTRONG:
    	var_result8 = random_func(8, 2, true);
    	if (window == 3 && window_timer == 1)
    	{
    		switch (var_result8)
    		{
    			case 0:
    				sound_stop(sound_get("voice3"))
    				sound_play(sound_get("voice3"))
    			break;
    			case 1:
    				sound_stop(sound_get("voice2"))
    				sound_play(sound_get("voice2"))
    		}
    	}
    break;
    case AT_DAIR:
    	var_result8 = random_func(8, 2, true);
    	if (window == 3 && window_timer == 1)
    	{
    		switch (var_result8)
    		{
    			case 0:
    				sound_stop(sound_get("voice7"))
    				sound_play(sound_get("voice7"))
    			break;
    			case 1:
    				sound_stop(sound_get("voice5"))
    				sound_play(sound_get("voice5"))
    		}
    	}
    break;	
	case AT_DTILT:
    	var_result8 = random_func(8, 2, true);
    	if (window == 3 && window_timer == 1)
    	{
    		switch (var_result8)
    		{
    			case 0:
    				sound_stop(sound_get("voice5"))
    				sound_play(sound_get("voice5"))
    			break;
    			case 1:
    				sound_stop(sound_get("voice5"))
    				sound_play(sound_get("voice5"))
    		}
    	}
    break;
	case AT_FAIR:
    	var_result8 = random_func(8, 2, true);
    	if (window == 3 && window_timer == 1)
    	{
    		switch (var_result8)
    		{
    			case 0:
    				sound_stop(sound_get("uh"))
    				sound_play(sound_get("uh"))
    			break;
    			case 1:
    				sound_stop(sound_get("voice2"))
    				sound_play(sound_get("voice2"))
    		}
    	}
    break;
	case AT_FTILT:
    	var_result8 = random_func(8, 2, true);
    	if (window == 3 && window_timer == 1)
    	{
    		switch (var_result8)
    		{
    			case 0:
    				sound_stop(sound_get("uh"))
    				sound_play(sound_get("uh"))
    			break;
    			case 1:
    				sound_stop(sound_get("hurt2"))
    				sound_play(sound_get("hurt2"))
    		}
    	}
    break;
	    case AT_BAIR:
    	var_result8 = random_func(8, 2, true);
    	if (window == 3 && window_timer == 1)
    	{
    		switch (var_result8)
    		{
    			case 0:
    				sound_stop(sound_get("voice7"))
    				sound_play(sound_get("voice7"))
    			break;
    			case 1:
    				sound_stop(sound_get("voice4"))
    				sound_play(sound_get("voice4"))
    		}
    	}
	    case AT_FAIR:
    	var_result8 = random_func(8, 2, true);
    	if (window == 3 && window_timer == 1)
    	{
    		switch (var_result8)
    		{
    			case 0:
    				sound_stop(sound_get("uh"))
    				sound_play(sound_get("uh"))
    			break;
    			case 1:
    				sound_stop(sound_get("voice3"))
    				sound_play(sound_get("voice3"))
    		}
    	}
    break;	
        case AT_DSTRONG:
    	var_result8 = random_func(8, 2, true);
    	if (window == 1 && window_timer == 1)
    	{
    		switch (var_result8)
    		{
    			case 0:
    				sound_stop(sound_get("jump"))
    				sound_play(sound_get("jump"))
    			break;
    			case 1:
    				sound_stop(sound_get("uh"))
    				sound_play(sound_get("uh"))
            	break;  
            	case 2:
    				sound_stop(sound_get("jump"))
    				sound_play(sound_get("jump"))
    			break;
    		}
    	}
    default:
    break;
}	