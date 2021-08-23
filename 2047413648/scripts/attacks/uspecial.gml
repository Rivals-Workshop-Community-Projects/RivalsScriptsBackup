set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 18);


set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 79);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 69);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 305);


set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 79);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 69);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("RI"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, .8);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -7);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 275);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 89);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 79);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 301);


set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 79);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 69);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sound_get("RI2"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, .8);