set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);

//startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);

//grab active
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 2);

//grab miss
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 3, AG_WINDOW_GOTO, 30);

//rotate throw
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 15);

//endlag
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 8);


set_num_hitboxes(AT_FAIR, 0);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 130);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));