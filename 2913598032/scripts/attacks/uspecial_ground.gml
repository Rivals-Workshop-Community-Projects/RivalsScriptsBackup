set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uair2"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//startup
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 2);

// startup 2 (to skip a frame of anim)
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

// Active Hit
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Ending
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, 1);