set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 2);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);

var ig = 1;

//Forward Air Start
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 3);

ig++;

//Forward Air Hit
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

ig++;

//Forward Air End
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, ig, AG_WINDOW_CANCEL_TYPE, 1);

ig++;

//Forward Air Hit 2
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

ig++;

//Forward Air End 2
set_window_value(AT_NAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, ig, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 2);
ig = 1;

//Knee
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, ig, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, ig, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, ig, HG_WIDTH, 30);
set_hitbox_value(AT_NAIR, ig, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, ig, HG_ANGLE, 50); // changed angle
set_hitbox_value(AT_NAIR, ig, HG_BASE_KNOCKBACK, 6.5); // lowered bkb
set_hitbox_value(AT_NAIR, ig, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, ig, HG_BASE_HITPAUSE, 6); // raised hitpause, (bad kero no hitpause)
set_hitbox_value(AT_NAIR, ig, HG_HITPAUSE_SCALING, .3); // added hitpause scaling
//set_hitbox_value(AT_NAIR, ig, HG_EXTRA_HITPAUSE, 5); // added extra hitpause to differentiate from bair, frame advantage ergo more utilitarian combo tool
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Foot
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, ig, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, ig, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, ig, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, ig, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NAIR, ig, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, ig, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, ig, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, ig, HG_ANGLE, 65); 
set_hitbox_value(AT_NAIR, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, ig, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, ig, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_NAIR, ig, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, ig, HG_ANGLE_FLIPPER, 0);