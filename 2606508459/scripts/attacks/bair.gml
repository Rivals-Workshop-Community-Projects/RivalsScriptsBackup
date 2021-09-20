set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6); // added landing lag
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);

var ig = 1;

//Back Air Start
set_window_value(AT_BAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, ig, AG_WINDOW_ANIM_FRAMES, 3);

ig++;

//Back Air Hit
set_window_value(AT_BAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, ig, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

ig++;

//Back Air End
set_window_value(AT_BAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, ig, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 1);
ig = 1;

set_hitbox_value(AT_BAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, ig, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, ig, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, ig, HG_HITBOX_X, -29);
set_hitbox_value(AT_BAIR, ig, HG_HITBOX_Y, -21);
set_hitbox_value(AT_BAIR, ig, HG_WIDTH, 73);
set_hitbox_value(AT_BAIR, ig, HG_HEIGHT, 54);
set_hitbox_value(AT_BAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, ig, HG_ANGLE, 135);

/*
set_hitbox_value(AT_BAIR, ig, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, ig, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, ig, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, ig, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, ig, HG_HITPAUSE_SCALING, .7);
*/

set_hitbox_value(AT_BAIR, ig, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, ig, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, ig, HG_HITPAUSE_SCALING, .2);

set_hitbox_value(AT_BAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_BAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, ig, HG_ANGLE_FLIPPER, 6);