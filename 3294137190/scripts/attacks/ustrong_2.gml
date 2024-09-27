set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko3"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2, 2);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 180);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -200);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));