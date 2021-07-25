set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("tablepick"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("tablepick_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_shop_buy"));

set_num_hitboxes(AT_FSPECIAL_AIR, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);

