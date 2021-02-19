/*set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_new"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_new_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 3);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 0);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 44);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 1);//*/

set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_new_new_new"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_new_new_new_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);
//set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 3);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 49);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 13);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -1);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 57);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 57);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 35);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -22);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 1);//*/