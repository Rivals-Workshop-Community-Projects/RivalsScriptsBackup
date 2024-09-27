set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecialAir"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_pom_fspecial_swing"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

//attack
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);

//hold out
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//recovery
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
// set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 4);
// set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("sapper_plant"));


// set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 999);
// set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
// set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 20);
// set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -35);
// set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 55);
// set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 55);
// set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
// set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
// set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 361);
// set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
// // set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
// set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 1);
// // set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
// set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_orca_crunch"));