set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 2);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 54);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -131);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_bird_downspecial"));