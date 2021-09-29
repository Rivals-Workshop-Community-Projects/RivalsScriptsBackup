set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
//set_attack_value(AT_USPECIAL, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 7);

var ig = 1;

//Forward Special Start
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 5);

ig++;

//Forward Special Hit
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));

ig++;

//Forward Special Go Up
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED, uspecial_air_max_speed);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 7);

ig++;

//Forward Special End
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED, uspecial_air_max_speed);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 9);

ig++;

//Pratfall Compensation
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 13);

ig++;

//Extra jump
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED, 6);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));

ig++;

set_num_hitboxes(AT_USPECIAL, 4);
ig = 1;

//Hit 1
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW, 2);
//set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_LIFETIME, 4); //2
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_X, 14);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_Y, -23);
set_hitbox_value(AT_USPECIAL, ig, HG_WIDTH, 54);
set_hitbox_value(AT_USPECIAL, ig, HG_HEIGHT, 54);
set_hitbox_value(AT_USPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, ig, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT, 109);
//set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Hit 2
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_X, 47);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, ig, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, ig, HG_HEIGHT, 66);
set_hitbox_value(AT_USPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, ig, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT, 109);
//set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Hit 3 sweet
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW, 3);
//set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_X, 27);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, ig, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, ig, HG_HEIGHT, 98);
set_hitbox_value(AT_USPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, ig, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_USPECIAL, ig, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT, 110);
//set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Hit 3 sour
/*
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW, 3);
//set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_X, 68);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL, ig, HG_WIDTH, 95);
set_hitbox_value(AT_USPECIAL, ig, HG_HEIGHT, 114);
set_hitbox_value(AT_USPECIAL, ig, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, ig, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_USPECIAL, ig, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE_FLIPPER, 0);
*/

//END