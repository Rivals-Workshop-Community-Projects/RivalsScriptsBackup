//pen Pen PEN
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//Attack 1
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("swing2"));

//Attack 2
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("swing2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);

//Attack 3
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sound_get("swing3"));
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 74);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 65);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, 0.10);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 0.10);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 89);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 85);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 2, HG_DRIFT_MULTIPLIER, 0.10);
set_hitbox_value(AT_FAIR, 2, HG_SDI_MULTIPLIER, 0.10); 

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 79);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 79);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 35);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("ftilt"));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);