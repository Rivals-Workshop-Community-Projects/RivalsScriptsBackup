set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("swing_heavy_2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

//sweetspot
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -8);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 22);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 33);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("hit_strong_2"));

//right
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 25);//29
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -10);//-20
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 43);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 91);//111
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("hit_strong_1"));

//middle
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -8);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 22);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 85);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("hit_strong_1"));

//left
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -43);//-47
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 43);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 111);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 120);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("hit_strong_1"));

















