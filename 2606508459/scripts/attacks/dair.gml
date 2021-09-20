set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);

var ig = 1;

//Down Air Start
set_window_value(AT_DAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, ig, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_DAIR, ig, AG_WINDOW_SFX_FRAME, 13);
ig++;

//Down Air Hit
set_window_value(AT_DAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, ig, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); // moved sfx to match animation


ig++;

//Down Air End
set_window_value(AT_DAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, ig, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, ig, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig++;

set_num_hitboxes(AT_DAIR, 2);
ig = 1;

//Normal
set_hitbox_value(AT_DAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, ig, HG_SHAPE, 2); // changed shape of hitbox
set_hitbox_value(AT_DAIR, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, ig, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, ig, HG_HITBOX_X, 29);
set_hitbox_value(AT_DAIR, ig, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DAIR, ig, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, ig, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, ig, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, ig, HG_ANGLE, 315);
set_hitbox_value(AT_DAIR, ig, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, ig, HG_KNOCKBACK_SCALING, .2); // Reduced from .5 to .3 
set_hitbox_value(AT_DAIR, ig, HG_BASE_HITPAUSE, 7); // Changed value to 6 from 2 (spikes should have have high base hitpause so they are easier for the opponent to react to)
set_hitbox_value(AT_DAIR, ig, HG_HITPAUSE_SCALING, .5); // added hitpause scaling 
//set_hitbox_value(AT_DAIR, ig, HG_HIT_LOCKOUT, 6); // commented out lock out
set_hitbox_value(AT_DAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 27);
set_hitbox_value(AT_DAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -3);
//set_hitbox_value(AT_DAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

ig++;

//Sweetspot
/*
set_hitbox_value(AT_DAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, ig, HG_SHAPE, 2); // changed shape of hitbox
set_hitbox_value(AT_DAIR, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, ig, HG_HITBOX_X, 40);
set_hitbox_value(AT_DAIR, ig, HG_HITBOX_Y, 7);
set_hitbox_value(AT_DAIR, ig, HG_WIDTH, 33);
set_hitbox_value(AT_DAIR, ig, HG_HEIGHT, 33);
set_hitbox_value(AT_DAIR, ig, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, ig, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, ig, HG_ANGLE, -80);
set_hitbox_value(AT_DAIR, ig, HG_BASE_KNOCKBACK, 5); 
set_hitbox_value(AT_DAIR, ig, HG_KNOCKBACK_SCALING, .9); // Reduced from .5 to .3 (same reason as above)
set_hitbox_value(AT_DAIR, ig, HG_BASE_HITPAUSE, 10); // Changed value to 6 from 2 (spikes should have have high base hitpause so they are easier for the opponent to react to)
set_hitbox_value(AT_DAIR, ig, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DAIR, ig, HG_EXTRA_HITPAUSE, 2); // added extra hitpause
set_hitbox_value(AT_DAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 27);
set_hitbox_value(AT_DAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_DAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, ig, HG_HIT_LOCKOUT, 6); // added hit lockout so spike does not lead into sourspot if spike is landed only
*/

//END