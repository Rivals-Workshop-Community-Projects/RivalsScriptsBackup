set_attack_value(AT_UNCHAINED, AG_CATEGORY, 1);
set_attack_value(AT_UNCHAINED, AG_SPRITE, sprite_get("unchained"));
set_attack_value(AT_UNCHAINED, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UNCHAINED, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UNCHAINED, AG_LANDING_LAG, 4);
set_attack_value(AT_UNCHAINED, AG_HURTBOX_SPRITE, sprite_get("unchained_hurt"));

set_window_value(AT_UNCHAINED, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UNCHAINED, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UNCHAINED, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UNCHAINED, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UNCHAINED, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UNCHAINED, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UNCHAINED, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UNCHAINED, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UNCHAINED, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_UNCHAINED, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UNCHAINED, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UNCHAINED, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UNCHAINED, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UNCHAINED, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UNCHAINED, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_UNCHAINED, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UNCHAINED, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_UNCHAINED, 3);

set_hitbox_value(AT_UNCHAINED, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UNCHAINED, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UNCHAINED, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UNCHAINED, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_UNCHAINED, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UNCHAINED, 1, HG_WIDTH, 73);
set_hitbox_value(AT_UNCHAINED, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UNCHAINED, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UNCHAINED, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UNCHAINED, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UNCHAINED, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UNCHAINED, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UNCHAINED, 1, HG_KNOCKBACK_SCALING, .60);
set_hitbox_value(AT_UNCHAINED, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UNCHAINED, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UNCHAINED, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UNCHAINED, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UNCHAINED, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UNCHAINED, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UNCHAINED, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UNCHAINED, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UNCHAINED, 2, HG_HITBOX_X, 29);
set_hitbox_value(AT_UNCHAINED, 2, HG_HITBOX_Y, -69);
set_hitbox_value(AT_UNCHAINED, 2, HG_WIDTH, 79);
set_hitbox_value(AT_UNCHAINED, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_UNCHAINED, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UNCHAINED, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UNCHAINED, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UNCHAINED, 2, HG_ANGLE, 85);
set_hitbox_value(AT_UNCHAINED, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UNCHAINED, 2, HG_KNOCKBACK_SCALING, .60);
set_hitbox_value(AT_UNCHAINED, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UNCHAINED, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UNCHAINED, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UNCHAINED, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UNCHAINED, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UNCHAINED, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UNCHAINED, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UNCHAINED, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UNCHAINED, 3, HG_HITBOX_X, -25);
set_hitbox_value(AT_UNCHAINED, 3, HG_HITBOX_Y, -53);
set_hitbox_value(AT_UNCHAINED, 3, HG_WIDTH, 73);
set_hitbox_value(AT_UNCHAINED, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_UNCHAINED, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UNCHAINED, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UNCHAINED, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UNCHAINED, 3, HG_ANGLE, 85);
set_hitbox_value(AT_UNCHAINED, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UNCHAINED, 3, HG_KNOCKBACK_SCALING, .60);
set_hitbox_value(AT_UNCHAINED, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UNCHAINED, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UNCHAINED, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UNCHAINED, 3, HG_ANGLE_FLIPPER, 6);