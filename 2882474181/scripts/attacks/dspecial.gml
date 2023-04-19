set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("acidstart2"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("acidend"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, -10);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 32);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 38);

set_num_hitboxes(AT_DSPECIAL, 3);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("hit_acid3"));
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("hit_acid1"));

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 52);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("hit_acid4"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_FORCE_FLINCH, 3);