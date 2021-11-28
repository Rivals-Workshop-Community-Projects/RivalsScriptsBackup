
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

var ig = 1;

//Jab 1 Start
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 1);

ig++;

//Jab 1 Hit
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

ig++;

//Jab 1 End
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, ig, AG_WINDOW_CANCEL_TYPE, 1);

ig++;

//Jab 2 Start
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

ig++;

//Jab 2 Hit
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, ig, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 5);

ig++;

//Jab 2 End
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, ig, AG_WINDOW_CANCEL_TYPE, 1);

ig++;

//Jab 3 Start
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

ig++;

//Jab 3 Hit
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 13);

ig++;

//Jab 3 End
set_window_value(AT_JAB, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, ig, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_JAB, ig, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 3);
ig = 1;

set_hitbox_value(AT_JAB, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, ig, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, ig, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_Y, -39);
set_hitbox_value(AT_JAB, ig, HG_WIDTH, 46);
set_hitbox_value(AT_JAB, ig, HG_HEIGHT, 31);
set_hitbox_value(AT_JAB, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, ig, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, ig, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, ig, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, ig, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, ig, HG_BASE_HITPAUSE, 3); // changed from 2 to 3
set_hitbox_value(AT_JAB, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, ig, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, ig, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, ig, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, ig, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, ig, HG_SHAPE, 2);

ig++;

set_hitbox_value(AT_JAB, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, ig, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, ig, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_Y, -46);
set_hitbox_value(AT_JAB, ig, HG_WIDTH, 37);
set_hitbox_value(AT_JAB, ig, HG_HEIGHT, 33);
set_hitbox_value(AT_JAB, ig, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, ig, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, ig, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, ig, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, ig, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, ig, HG_BASE_HITPAUSE, 3); // changed from 2 to 3
set_hitbox_value(AT_JAB, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, ig, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, ig, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, ig, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, ig, HG_TECHABLE, 1);

ig++;

set_hitbox_value(AT_JAB, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, ig, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, ig, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, ig, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, ig, HG_WIDTH, 53);
set_hitbox_value(AT_JAB, ig, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, ig, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, ig, HG_DAMAGE, 5); // raised damage by 1
set_hitbox_value(AT_JAB, ig, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, ig, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, ig, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_JAB, ig, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, ig, HG_HITPAUSE_SCALING, .6); // added hitpause scaling
set_hitbox_value(AT_JAB, ig, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_JAB, ig, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, ig, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, ig, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, ig, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_JAB, ig, HG_TECHABLE, 1);