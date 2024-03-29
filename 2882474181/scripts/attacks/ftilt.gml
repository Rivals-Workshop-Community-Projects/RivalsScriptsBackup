set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_CATEGORY, 2);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("darkswipe"));

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, sound_get("darkswipe"));

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_FTILT, 4);

set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("hit_dark2"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, pulse2);

set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 29);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -11);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 51);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("hit_dark2"));
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, pulse2);

set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 48);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 45);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 73);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("hit_darkpulse"));
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, pulse);

set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -5);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 57);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 54);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, sound_get("hit_darkpulse"));
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, pulse);