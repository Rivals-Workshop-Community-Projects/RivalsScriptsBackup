set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack_air"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_USES_CUSTOM_GRAVITY, true);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("sfx_sans_blink"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed / 2);

set_num_hitboxes(AT_DATTACK, 7);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 83);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DATTACK, 1, HG_KARMA, 1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 83);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 43);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 10);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 2, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DATTACK, 2, HG_KARMA, 1);

set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_KARMA, 1);

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 4, HG_KARMA, 1);

set_hitbox_value(AT_DATTACK, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 5, HG_KARMA, 1);

set_hitbox_value(AT_DATTACK, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 6, HG_KARMA, 1);

set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_DATTACK, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 7, HG_WIDTH, 83);
set_hitbox_value(AT_DATTACK, 7, HG_HEIGHT, 43);
set_hitbox_value(AT_DATTACK, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 7, HG_ANGLE, 65);
set_hitbox_value(AT_DATTACK, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 7, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DATTACK, 7, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(AT_DATTACK, 7, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(AT_DATTACK, 7, HG_KARMA, 1);


/*
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 2);
*/
