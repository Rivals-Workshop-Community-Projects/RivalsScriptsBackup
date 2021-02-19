set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);

//dts   dta   dth   dtr
//0-0:1 1-1:1 2-2:1 3-3:1

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("swing_2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

//normal hit
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -19);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 86);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5.4);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("hit_stab_1"));

//sweet stab hit
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 92);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 13);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.68);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("hit_stab_1"));


//wiimote
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 12);

set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_SPRITE, sprite_get("wiimote"));
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 36);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 65);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 5.4);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("hit_medium_2"));

set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 3, HG_EXTENDED_PARRY_STUN, 1);



