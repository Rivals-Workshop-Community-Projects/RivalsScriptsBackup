curr_attack = AT_DSTRONG;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(curr_attack, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 9);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 18);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(curr_attack, 1);


//Type 1 (Regular Strong)
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -10);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 60);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 20);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 10);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  70);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(curr_attack, 1, HG_HIT_LOCKOUT, 10);


/*
//Type 2 (Combo Stun or Kill)
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -10);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 60);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 20);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 10);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  70);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER,  1.3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);
*/

/*
//Type 3 (Always a stun)
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -10);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 60);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 20);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 10);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  100);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER,  3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);
*/
