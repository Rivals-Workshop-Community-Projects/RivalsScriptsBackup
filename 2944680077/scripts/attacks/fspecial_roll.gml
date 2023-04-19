set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("fspecial_roll"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("fspecial_roll"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_roll_hurt"));
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("galaxy_roll"));

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, 10);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED, 10);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 36);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 18);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));