curr_attack = AT_USPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(curr_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(curr_attack, AG_LANDING_LAG, 0);

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
//set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 7);

if (uspecial_has_pratfall) {
	set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 7);
} else {
	set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);	
}
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 2);



set_num_hitboxes(curr_attack, 1);

set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 30);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 8);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 7);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 30);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, 16); //-8
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 48); //24
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 1); 
set_hitbox_value(curr_attack, 1, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(curr_attack, 1, HG_EXTRA_HITPAUSE, 30); 
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, .5); 
set_hitbox_value(curr_attack, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);