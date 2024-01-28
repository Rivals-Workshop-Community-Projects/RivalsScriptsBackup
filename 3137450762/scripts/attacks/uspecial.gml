//La Reina uspecial.gml
var edit_attack = AT_USPECIAL;
var e_window = 1;

set_attack_value(edit_attack, AG_CATEGORY, 2);
set_attack_value(edit_attack, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 4);
set_attack_value(edit_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(edit_attack, AG_LANDING_LAG, 4);
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//Anticipation
e_window = 1;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 12); //Changed from 15 to 12
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, 0.1);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 1);
/* set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med")); */

//Attack
e_window = 2;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 3);

//Rise
e_window = 3;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 12);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, .5);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, -13.5);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 2);

//Whiff
e_window = 4;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 7);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 16);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 5);

//Grab transition
e_window = 5;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 10);
/* set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED_TYPE, 1); */
/* set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 1); */

e_window = 6;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 14);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 13);

//Falling
e_window = 7;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 24);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 14+8);
/* set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, -14);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 2); */

//Land
e_window = 8;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 30);

//Throw
e_window = 9;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 13);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 31);

set_num_hitboxes(edit_attack, 2);

//Grab
set_hitbox_value(edit_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, 1, HG_SHAPE, 0);
set_hitbox_value(edit_attack, 1, HG_WINDOW, 3);
set_hitbox_value(edit_attack, 1, HG_LIFETIME, 12);
set_hitbox_value(edit_attack, 1, HG_HITBOX_X, 12);
set_hitbox_value(edit_attack, 1, HG_HITBOX_Y, -42); //From -32 to -38
set_hitbox_value(edit_attack, 1, HG_WIDTH, 52); //From 50 to 52
set_hitbox_value(edit_attack, 1, HG_HEIGHT, 66); // From 56 to 66
set_hitbox_value(edit_attack, 1, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(edit_attack, 1, HG_DAMAGE, 2);
set_hitbox_value(edit_attack, 1, HG_ANGLE, 90);
set_hitbox_value(edit_attack, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(edit_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(edit_attack, 1, HG_BASE_HITPAUSE, 0);
//set_hitbox_value(edit_attack, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(edit_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(edit_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, -30);
set_hitbox_value(edit_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(edit_attack, 1, HG_ANGLE_FLIPPER, 6);

//Slam
set_hitbox_value(edit_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, 2, HG_SHAPE, 0);
set_hitbox_value(edit_attack, 2, HG_WINDOW, 8);
set_hitbox_value(edit_attack, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(edit_attack, 2, HG_LIFETIME, 1);
set_hitbox_value(edit_attack, 2, HG_HITBOX_X, 10);
set_hitbox_value(edit_attack, 2, HG_HITBOX_Y, -21);
set_hitbox_value(edit_attack, 2, HG_WIDTH, 100);
set_hitbox_value(edit_attack, 2, HG_HEIGHT, 64);
set_hitbox_value(edit_attack, 2, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, 2, HG_DAMAGE, 10);
set_hitbox_value(edit_attack, 2, HG_ANGLE, 90);
set_hitbox_value(edit_attack, 2, HG_BASE_KNOCKBACK, 8);
// this knockback scaling number is approximate. ctrl+f "kb_formula" in attack_update for the real value
set_hitbox_value(edit_attack, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(edit_attack, 2, HG_BASE_HITPAUSE, 30);
set_hitbox_value(edit_attack, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(edit_attack, 2, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(edit_attack, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(edit_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(edit_attack, 2, HG_VISUAL_EFFECT_Y_OFFSET, 12);
set_hitbox_value(edit_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(edit_attack, 2, HG_ANGLE_FLIPPER, 0);
