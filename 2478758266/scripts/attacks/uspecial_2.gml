set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("ropesnake"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("ropesnakeair"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("ropesnake_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("snake"));

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);





set_num_hitboxes(AT_USPECIAL_2, 4);

set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 61);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 82);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 22);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 36);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("jaba"));

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 108);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 24);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 21);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 36);
set_hitbox_value(AT_USPECIAL_2, 2, HG_EFFECT, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, .50);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, sound_get("fang"));

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 70);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 101);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 22);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 36);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, sound_get("jaba"));

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 61);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 82);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 22);
set_hitbox_value(AT_USPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 36);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, sound_get("jaba"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("jaba"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, sound_get("jaba"));