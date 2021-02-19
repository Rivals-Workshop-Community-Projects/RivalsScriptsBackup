/*set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 10);

//body hitbox
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 33);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 6);

//top sour ear
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 6);

//top swwet ear
set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -102);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 26);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 1);

//front sweet ear
set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 45);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 1);

//front sour ear
set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//front leg
set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 13);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -16);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 29);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 16);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//top late sweet ear
set_hitbox_value(AT_UTILT, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -102);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 26);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 62);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 7, HG_VISUAL_EFFECT, 1);

//back sweet ear
set_hitbox_value(AT_UTILT, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, -50);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -38);
set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 45);
set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 8, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_UTILT, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 8, HG_VISUAL_EFFECT, 1);

//back sour ear
set_hitbox_value(AT_UTILT, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, -20);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 9, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 9, HG_HEIGHT, 38);
set_hitbox_value(AT_UTILT, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 9, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 9, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 9, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 9, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 9, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 9, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 9, HG_WINDOW_CREATION_FRAME, 6);

//back leg
set_hitbox_value(AT_UTILT, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, -13);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -16);
set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 29);
set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 16);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 10, HG_WINDOW_CREATION_FRAME, 6);//*/

///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////

/*set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_new_old"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_new_old_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 106);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -72);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 24);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 1);//*/

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_new_new"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_new_new_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 108-96);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, 132-160);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 108-96);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, 96-160);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 92);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 1);//*/