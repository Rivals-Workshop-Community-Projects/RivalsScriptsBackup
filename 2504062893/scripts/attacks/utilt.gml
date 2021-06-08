set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT,1);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 96);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
// set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, snd_Utilt_hit);

// set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
// set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
// set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -2);
// set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -39);
// set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 76);
// set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
// set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
// set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
// set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .35);
// set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
// set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
// set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 4);