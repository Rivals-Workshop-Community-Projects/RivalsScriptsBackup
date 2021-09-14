set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_up"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);

set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 8);

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

//H1
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

//H2
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//H3a
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);

//H3b
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_2, 4);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 140);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -86);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_swipe_heavy1"));

set_hitbox_value(AT_FSPECIAL_2, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 140);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 58);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_X_OFFSET, 26);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, 18);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_bite"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_EXTENDED_PARRY_STUN, 1);