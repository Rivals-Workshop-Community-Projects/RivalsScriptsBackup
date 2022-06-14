//Down strong
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_num_hitboxes(AT_DSTRONG, 2);

//Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

//In air
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3)
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ice_shatter"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

//Attack
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

//Follow through
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//Position shift
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);

//Hitbox 1
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.32);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 65);
