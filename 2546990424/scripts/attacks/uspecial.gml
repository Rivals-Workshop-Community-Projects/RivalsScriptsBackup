set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
//set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, .5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_num_hitboxes(AT_USPECIAL, 7);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 180);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 190);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 7);
