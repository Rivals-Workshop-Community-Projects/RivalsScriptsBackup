set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
//startup 1
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED, -5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);
//active 1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
//startup 2
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 4);
//active 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HSPEED, -5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);
//recovery
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
//IASA
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_SFX, sound_get("saya"));
set_window_value(AT_DSTRONG, 7, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_IASA, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("slicew2"));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -58);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 180-60);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("slicew2"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);