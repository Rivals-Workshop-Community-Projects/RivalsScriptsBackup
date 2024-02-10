set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air_up"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air_up"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_up_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_bird_upspecial"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 11.5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -5);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);

set_num_hitboxes(AT_FSPECIAL_AIR, 6);

//Initial Hits
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DRIFT_MULTIPLIER, 0.025);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.075);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 58);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DRIFT_MULTIPLIER, 0.025);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.075);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


//Late Hit
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 54);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Later Hit
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WIDTH, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_DRIFT_MULTIPLIER, 0.025);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HEIGHT, 54);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_DRIFT_MULTIPLIER, 0.025);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


