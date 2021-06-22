set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_orca_absorb"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -5.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(AT_USPECIAL, 6);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 37);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 19);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, 15);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 3);