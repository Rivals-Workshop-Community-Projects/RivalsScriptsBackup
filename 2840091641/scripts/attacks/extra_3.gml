set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("extra_3"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 15);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("extra_3_hurt"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 35);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("www"));

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("woof"));
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 15);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 20);


set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));