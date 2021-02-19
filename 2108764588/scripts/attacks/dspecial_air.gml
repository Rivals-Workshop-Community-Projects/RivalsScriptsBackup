set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));//sprite_get("uair_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_DSPECIAL_AIR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 26);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 315);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));