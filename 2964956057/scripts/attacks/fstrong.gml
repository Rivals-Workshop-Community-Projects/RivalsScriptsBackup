var atk = AT_FSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

var window_num = 0;

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, has_rune("L")? 10:15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, has_rune("L")? 11:17);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

var hitbox_num = 0;

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 44);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -31);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 65);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 61);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -18);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

if has_rune("A"){
	hitbox_num++;
	set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
	set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
	set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 180);
	set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 61);
	set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -18);
	set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
	set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
	set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
	set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
	set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
	set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
	set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ell_fist_fire"));
	set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fstrong_rune"));
	set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, sprite_get("fstrong_rune"));
	set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fstrong_rune"));
	set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 1/3);
	set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, 7);
	set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, asset_get("empty_spr"));
}

hitbox_num++; // HFX FRONT
    // General Info
        set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
        set_hitbox_value(atk, hitbox_num, HG_WINDOW, 9);
        set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 0);
        set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 32);
        
    // Location
        set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
        set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0);
        
        set_hitbox_value(atk, hitbox_num, HG_WIDTH, 0);
        set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 0);
        
    // Hitplayer Stats
        set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 0);
        set_hitbox_value(atk, hitbox_num, HG_ANGLE, 0);
        
        set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 1);
        set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
        
        set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 0);
        set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
        
    // Projectile Animation
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fx_fstrong_hit_fg"));
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("hitbox_empty"));
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0.24);
        
    // Proj Movement
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
        
    // Proj Interactions
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, false);
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, true);
        set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 1);
        
set_num_hitboxes(atk, hitbox_num);