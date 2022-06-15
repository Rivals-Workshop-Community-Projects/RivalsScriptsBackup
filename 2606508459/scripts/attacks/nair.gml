set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);

var ig = 1;

//Forward Air Start
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

ig++;

//Forward Air Hit
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAME_START, 3);

ig++;

//Forward Air End
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, ig, AG_WINDOW_CANCEL_TYPE, 1);

ig++;

//Forward Air Hit 2
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

ig++;

//Forward Air End 2
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 3);
ig = 1;

//Knee
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, ig, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, ig, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NAIR, ig, HG_WIDTH, 59);
set_hitbox_value(AT_NAIR, ig, HG_HEIGHT, 53);
set_hitbox_value(AT_NAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, ig, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, ig, HG_ANGLE, 50); // changed angle
set_hitbox_value(AT_NAIR, ig, HG_BASE_KNOCKBACK, 5); // lowered bkb
set_hitbox_value(AT_NAIR, ig, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NAIR, ig, HG_BASE_HITPAUSE, 6); // raised hitpause, (bad kero no hitpause)
set_hitbox_value(AT_NAIR, ig, HG_HITPAUSE_SCALING, .3); // added hitpause scaling
//set_hitbox_value(AT_NAIR, ig, HG_EXTRA_HITPAUSE, 5); // added extra hitpause to differentiate from bair, frame advantage ergo more utilitarian combo tool
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Foot A
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, ig, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_X, 42);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_Y, -41);
set_hitbox_value(AT_NAIR, ig, HG_WIDTH, 37);
set_hitbox_value(AT_NAIR, ig, HG_HEIGHT, 54);
set_hitbox_value(AT_NAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, ig, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, ig, HG_ANGLE, 65); 
set_hitbox_value(AT_NAIR, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, ig, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, ig, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_NAIR, ig, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Foot B
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, ig, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_X, 17);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NAIR, ig, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, ig, HG_HEIGHT, 37);
set_hitbox_value(AT_NAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, ig, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, ig, HG_ANGLE, 65); 
set_hitbox_value(AT_NAIR, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, ig, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, ig, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_NAIR, ig, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, ig, HG_ANGLE_FLIPPER, 0);