set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("warlock"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, sound_get("draw"));

set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, sound_get("doriya"));

set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,2);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("punch_heavy"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 302);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 17);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("swordheavy"));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 302);