set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("f_dair"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("f_dair_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL_AIR, 4);
//hit 1
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 28);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 285);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .25);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -36);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -36);

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, -36);