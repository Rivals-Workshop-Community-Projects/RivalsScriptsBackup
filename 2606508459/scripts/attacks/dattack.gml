set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

var ig = 1;

//Dash Attack Start (1)
set_window_value(AT_DATTACK, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, ig, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, ig, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_SFX, asset_get("sfx_rag_root"));

ig++;

//Dash Attack Hit (2-3)
set_window_value(AT_DATTACK, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, ig, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, ig, AG_WINDOW_HSPEED, 5);

ig++;

set_window_value(AT_DATTACK, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_ANIM_FRAME_START, 5);

ig++;

//Dash Attack End (4)
set_window_value(AT_DATTACK, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_LENGTH, 8); // changed value to 10 from 4
set_window_value(AT_DATTACK, ig, AG_WINDOW_ANIM_FRAMES, 2); // added endlag frames
set_window_value(AT_DATTACK, ig, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DATTACK, ig, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, ig, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, ig, AG_WINDOW_HAS_WHIFFLAG, 1); // changed value to 1

set_num_hitboxes(AT_DATTACK, 1);
ig = 1;

set_hitbox_value(AT_DATTACK, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, ig, HG_LIFETIME, 9);
set_hitbox_value(AT_DATTACK, ig, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, ig, HG_HITBOX_Y, -18); //-9);
set_hitbox_value(AT_DATTACK, ig, HG_WIDTH, 56);
set_hitbox_value(AT_DATTACK, ig, HG_HEIGHT, 36); //18);
set_hitbox_value(AT_DATTACK, ig, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, ig, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, ig, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, ig, HG_BASE_KNOCKBACK, 6); // reduced kb to 6 from 8
set_hitbox_value(AT_DATTACK, ig, HG_KNOCKBACK_SCALING, .4); // added kbs
set_hitbox_value(AT_DATTACK, ig, HG_BASE_HITPAUSE, 6); // changed bhp to match kb
set_hitbox_value(AT_DATTACK, ig, HG_HITPAUSE_SCALING, .3); // added hitpause scaling
set_hitbox_value(AT_DATTACK, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DATTACK, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DATTACK, ig, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, ig, HG_ANGLE_FLIPPER, 0); // no flipper, bad kero

//END