set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 53);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);//6
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);//52
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);//1
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .75);//.95
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);//5
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);//.35
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));//sfx_blow_medium1

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 53);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 55);//72
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);//1
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .55);//.8
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 54);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, 6);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 34);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 11);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 12);//8
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 275);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);//8
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .5);//.45
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));