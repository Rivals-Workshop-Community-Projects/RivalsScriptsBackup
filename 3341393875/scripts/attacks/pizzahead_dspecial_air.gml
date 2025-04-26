set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("pizzahead_dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("pizzahead_dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 10);

//Searching
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//Active
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Fail endlag
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_GOTO, get_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS) + 1);

//Success startup
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 13);

//Success throw
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 37);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX, sound_get("vigithrow"));
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX_FRAME, 4);

//Fall transition
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 28);


set_num_hitboxes(AT_DSPECIAL_AIR, 2);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 125);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 56);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("small_slap"));

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, -34);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -86);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 130);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 1);