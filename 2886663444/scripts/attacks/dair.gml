set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("dagger_swing1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -4);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 13);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, sound_get("dagger_swing2"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 13);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 69);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);//7
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("dagger_slash1"));
set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 305)

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 13);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);//7
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("dagger_slash1"));
set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 305)
