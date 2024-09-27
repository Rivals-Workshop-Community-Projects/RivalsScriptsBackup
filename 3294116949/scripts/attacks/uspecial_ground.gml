set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 0);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 0);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL_GROUND, 3);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_Y, -168);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WIDTH, 65);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_TECHABLE, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_ANGLE, 250);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_TECHABLE, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WIDTH, 69);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));