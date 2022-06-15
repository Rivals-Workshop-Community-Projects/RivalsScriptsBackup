set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);

var ig = 1;

//Forward Air Start
set_window_value(AT_FAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, ig, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);

ig++;

//Forward Air Start
set_window_value(AT_FAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, ig, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

ig++;

//Forward Air Hit
set_window_value(AT_FAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, ig, AG_WINDOW_LENGTH, 3); //8
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAME_START, 4);

ig++;

//Forward Air End
set_window_value(AT_FAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, ig, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig++;

//Forward Air End 2
set_window_value(AT_FAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, ig, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, ig, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 1);
ig = 1;

set_hitbox_value(AT_FAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, ig, HG_WINDOW, 3);
//set_hitbox_value(AT_FAIR, ig, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, ig, HG_LIFETIME, 3); //8
set_hitbox_value(AT_FAIR, ig, HG_HITBOX_X, 39);
set_hitbox_value(AT_FAIR, ig, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, ig, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, ig, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, ig, HG_ANGLE, 45);

/*
set_hitbox_value(AT_FAIR, ig, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, ig, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, ig, HG_HITPAUSE_SCALING, .2);
*/

set_hitbox_value(AT_FAIR, ig, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, ig, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, ig, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, ig, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, ig, HG_ANGLE_FLIPPER, 0);