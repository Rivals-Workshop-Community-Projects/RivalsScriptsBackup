set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 10);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 7);

//smear
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 10.5);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

//main
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 2.8);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 9.8);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

//nothing
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4);

//hit
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 6, AG_WINDOW_HSPEED, -1.6);
set_window_value(AT_DAIR, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_VSPEED, -6.3);
set_window_value(AT_DAIR, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.165);

//0 fuel
set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_taunt"));
set_window_value(AT_DAIR, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 13);

//landing
set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DAIR, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_SFX, asset_get("sfx_land_med"));
set_window_value(AT_DAIR, 9, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 9, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DAIR, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DAIR, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 10, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_DAIR, 3);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 26);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 34);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 52);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, fire_hit_fx);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 18);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
