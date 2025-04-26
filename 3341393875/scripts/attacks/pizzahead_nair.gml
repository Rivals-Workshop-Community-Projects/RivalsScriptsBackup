set_attack_value(AT_NTHROW, AG_CATEGORY, 1);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("pizzahead_nair"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NTHROW, AG_LANDING_LAG, 6);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("pizzahead_nair_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("mushroom2"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, -2.5);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NTHROW, 2);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 85);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 68);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));