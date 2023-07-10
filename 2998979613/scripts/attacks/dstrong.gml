set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED, -9);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED, 22);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 280);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));