//CATOOKEN

set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialair"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecialair_hurt"));

//Startup
var win_num = 1;
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_ANIM_FRAMES, 3);
win_num++;

//Mid Start
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_SFX, sound_get("tee_snapzap"));
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_SFX_FRAME, 3);
win_num++;

//Mid End
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, win_num, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_NSPECIAL_2, 1);
var ig = 1;

//Catooken Hitbox

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("catooken"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .25);
// set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
// set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, HFX_OLY_SPARKLE);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, HFX_ABS_ZAP_BIG);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_oly_dspecial_hit"));

// set_hitbox_value(AT_NSPECIAL_2, ig, HG_WINDOW, 2);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_LIFETIME, 50);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_PRIORITY, 2);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_DAMAGE, 4); //Change in init
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_ANGLE, 45);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_ANGLE_FLIPPER, 1);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_BASE_KNOCKBACK, 4);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_KNOCKBACK_SCALING, .3);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_PROJECTILE_ANIM_SPEED, .3);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// set_hitbox_value(AT_NSPECIAL_2, ig, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_BASE_HITPAUSE, 6); //6
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_EXTRA_HITPAUSE, 2); //15
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_HITPAUSE_SCALING, .5); //.5
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_VISUAL_EFFECT, 22);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_PROJECTILE_DESTROY_EFFECT, HFX_OLY_SPARKLE);
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_PROJECTILE_SPRITE, sprite_get("catooken"));
// set_hitbox_value(AT_NSPECIAL_2, ig, HG_PROJECTILE_MASK, -1);
