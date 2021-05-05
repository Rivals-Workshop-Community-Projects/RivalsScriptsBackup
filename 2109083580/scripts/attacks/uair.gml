set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_UAIR, 4);

//HITBOX 1
set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -101);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 51);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 31);

set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 6);

set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("F_air_U_air"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.7);

//HITBOX 2
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -37);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 23);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 51);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 6);

set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("F_air_U_air"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 0.7);

//HITBOX 3
set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -25);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 21);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 22);

set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 6);

set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("F_air_U_air"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 0.7);

//HITBOX 4
set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 31);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -94);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 18);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 17);

set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 6);

set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("F_air_U_air"));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITSTUN_MULTIPLIER, 0.7);