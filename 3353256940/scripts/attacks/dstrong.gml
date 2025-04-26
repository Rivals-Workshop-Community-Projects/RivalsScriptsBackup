set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//pre charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

//postcharge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("wildcharge"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

//active
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);

//end
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, true);

set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -96);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, thunder_big);
set_hitbox_value(AT_DSTRONG, 1, HG_TWENNY_ELECTRIC, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -52);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -96);
set_hitbox_value(AT_DSTRONG, 2, HG_TWENNY_ELECTRIC, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 48);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_whip2"));
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, thunder_big);
set_hitbox_value(AT_DSTRONG, 3, HG_TWENNY_ELECTRIC, 1);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -36);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 4, HG_TWENNY_ELECTRIC, 1);