set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -5);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_UAIR,3);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -11);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_waveland_gus"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 98);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 59);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_tow_anchor_land"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 63);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 97);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_tow_anchor_land"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 6);