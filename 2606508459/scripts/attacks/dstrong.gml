set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_CATEGORY, 1);
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

var ig = 1;

//Down Strong Start
set_window_value(AT_DSTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_ANIM_FRAMES, 7);

ig++;

//Down Strong Hit
set_window_value(AT_DSTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_SFX, asset_get("sfx_ori_bash_use"));

ig++;

//Down Strong End
set_window_value(AT_DSTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 9);

ig++;

set_num_hitboxes(AT_DSTRONG, 4);
ig = 1;

//Going down
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_X, 26);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSTRONG, ig, HG_WIDTH, 73);
set_hitbox_value(AT_DSTRONG, ig, HG_HEIGHT, 73);
set_hitbox_value(AT_DSTRONG, ig, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_TECHABLE, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, ig, HG_ANGLE, -90);
set_hitbox_value(AT_DSTRONG, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, ig, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, ig, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSTRONG, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Ground crash
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, ig, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSTRONG, ig, HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, ig, HG_HEIGHT, 95);
set_hitbox_value(AT_DSTRONG, ig, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, ig, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_ANGLE, -90);
set_hitbox_value(AT_DSTRONG, ig, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, ig, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_DSTRONG, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, ig, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSTRONG, ig, HG_HIT_SFX, asset_get("sfx_ori_bash_launch"));
set_hitbox_value(AT_DSTRONG, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Back Foot
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_X, -26);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DSTRONG, ig, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, ig, HG_HEIGHT, 21);
set_hitbox_value(AT_DSTRONG, ig, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, ig, HG_ANGLE, 150);
set_hitbox_value(AT_DSTRONG, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, ig, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, ig, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSTRONG, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Star
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, ig, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, ig, HG_LIFETIME, 16);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_X, 46);
set_hitbox_value(AT_DSTRONG, ig, HG_HITBOX_Y, -90);
set_hitbox_value(AT_DSTRONG, ig, HG_WIDTH, 30);
set_hitbox_value(AT_DSTRONG, ig, HG_HEIGHT, 33);
set_hitbox_value(AT_DSTRONG, ig, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, ig, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, ig, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, ig, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSTRONG, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, ig, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSTRONG, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, ig, HG_ANGLE_FLIPPER, 0);