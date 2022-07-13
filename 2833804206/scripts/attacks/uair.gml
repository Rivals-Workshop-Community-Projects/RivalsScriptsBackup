set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 3);

//init
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 85);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

//launcher
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);