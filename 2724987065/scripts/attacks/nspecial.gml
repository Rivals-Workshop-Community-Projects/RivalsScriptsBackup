set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

// jump
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -9.5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, -10);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);


// endlag
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

/*
set_num_hitboxes(AT_NSPECIAL, 0);

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, sfx_dbfz_hit_weak);
*/