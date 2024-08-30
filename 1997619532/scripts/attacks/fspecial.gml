set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));


set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);


set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 136);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);

// set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
// set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 4);
// set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 13);
// set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -81);
// set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 72);
// set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 40);
// set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
// set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 4);
// set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 9);
// set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 75);
// set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 11);
// set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
// set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .7);
// set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
// set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("slice"));
// set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .9);
// set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 304);