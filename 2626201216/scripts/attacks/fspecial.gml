set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START,  1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, -1);


set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 18);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("shock"));
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 10);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 4);
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -2);
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);


set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 69);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 110);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("puddle_electric"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));



set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 69);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 110);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("spark"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);

set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));

set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);






