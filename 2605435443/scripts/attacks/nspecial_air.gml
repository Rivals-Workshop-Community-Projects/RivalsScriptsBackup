set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("land"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("big_band_hurtbox"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_NSPECIAL_AIR, 2);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 42);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("grab"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, 42);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
