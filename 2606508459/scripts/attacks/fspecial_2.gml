set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_2_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_2_air_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_2, AG_LANDING_LAG, 5);
//set_attack_value(AT_FSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

var ig = 1;

//Grab
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_CUSTOM_GRAVITY, 0);

ig++;

//Prepare Launch
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_CUSTOM_GRAVITY, 0);

ig++;

//Throw
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 7);  
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_FSPECIAL_2, ig, AG_WINDOW_CUSTOM_GRAVITY, 0);

/*
set_num_hitboxes(AT_FSPECIAL_2, 1);
ig = 1;

set_hitbox_value(AT_FSPECIAL_2, ig, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_LIFETIME, 100);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_PROJECTILE_ANIM_SPEED, 2);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, ig, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_PROJECTILE_SPRITE, sprite_get("ball_formC_1"));
set_hitbox_value(AT_FSPECIAL_2, ig, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSPECIAL_2, ig, HG_HITBOX_Y, -50);
*/

//END