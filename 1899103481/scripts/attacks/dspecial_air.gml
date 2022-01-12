set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

// set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
// set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_DSPECIAL_AIR, 3); //no hitboxes will be created automatically. They must be created through create_hitbox(AT_DSPECIAL_AIR, 1, x, y)

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 68);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 290);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 345);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -74);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 56);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 30);