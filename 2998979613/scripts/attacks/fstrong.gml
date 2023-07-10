set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_GOTO, 30);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 30);

set_num_hitboxes(AT_FSTRONG, 0);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));