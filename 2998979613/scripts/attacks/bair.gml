set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 8);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_BAIR, 0);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));