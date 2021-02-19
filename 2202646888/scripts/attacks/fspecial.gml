set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_shop_open"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

//hold
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//prepare
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, -2);

//active
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);

//endlag
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 33);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);