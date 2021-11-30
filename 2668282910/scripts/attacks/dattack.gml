set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("brick_break_swing"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 4);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 59);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 53);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("brick_break_hit"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 37);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 59);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("brick_break_hit"));

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 29);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 59);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 53);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("super_effective"));

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 37);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 59);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 53);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sound_get("super_effective"));