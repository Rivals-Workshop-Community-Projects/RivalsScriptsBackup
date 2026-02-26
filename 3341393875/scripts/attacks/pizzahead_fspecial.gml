set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("pizzahead_fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("pizzahead_fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("pizzahead_fspecial_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 9 - (has_rune("C") * 4));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1 + air_accel);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 10 - (has_rune("C") * 5));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5 + air_accel);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 7);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));


set_num_hitboxes(AT_FSPECIAL_2, 2);

//hitbox
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 62);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);

//Pushbox
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 86);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EFFECT, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);