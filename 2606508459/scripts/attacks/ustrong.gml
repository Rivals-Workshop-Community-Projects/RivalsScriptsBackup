set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

var ig = 1;

//Up Strong Charge
set_window_value(AT_USTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, ig, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAMES, 6);

ig++;

//Up Strong Start
set_window_value(AT_USTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, ig, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

ig++;

//Up Strong Hit
set_window_value(AT_USTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, ig, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, ig, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USTRONG, ig, AG_WINDOW_HSPEED, 5);

ig++;

//Up Strong End
set_window_value(AT_USTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, ig, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig++;

//Up Strong Back Jump
set_window_value(AT_USTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USTRONG, ig, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, ig, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USTRONG, ig, AG_WINDOW_HSPEED, -3);

set_num_hitboxes(AT_USTRONG, 3);
ig = 1;

//Sourspot
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, ig, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, ig, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_X, 35);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, ig, HG_WIDTH, 66);
set_hitbox_value(AT_USTRONG, ig, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, ig, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, ig, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, ig, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USTRONG, ig, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, ig, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, ig, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Sweetspot
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, ig, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, ig, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_X, 23);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_Y, -67);
set_hitbox_value(AT_USTRONG, ig, HG_WIDTH, 46);
set_hitbox_value(AT_USTRONG, ig, HG_HEIGHT, 86);
set_hitbox_value(AT_USTRONG, ig, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, ig, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, ig, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, ig, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, ig, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USTRONG, ig, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Star
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, ig, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, ig, HG_LIFETIME, 15);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, ig, HG_HITBOX_Y, -103);
set_hitbox_value(AT_USTRONG, ig, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, ig, HG_HEIGHT, 37);
set_hitbox_value(AT_USTRONG, ig, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, ig, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, ig, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, ig, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USTRONG, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, ig, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, ig, HG_ANGLE_FLIPPER, 0);