//DATTACK 2

set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("dattack2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dattack2_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USPECIAL_2, 6);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 85);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WIDTH, 85);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, 6, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_2, 6, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_GROUP, -1);

