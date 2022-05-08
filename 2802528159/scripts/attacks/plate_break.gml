set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("plate_break"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));

set_num_hitboxes(AT_TAUNT_2, 1);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("melee_block"));