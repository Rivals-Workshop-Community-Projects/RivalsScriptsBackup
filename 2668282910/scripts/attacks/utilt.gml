set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("pokken_swing3"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -61);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 49);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("hit_normal2"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -61);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 49);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("hit_normal3"));