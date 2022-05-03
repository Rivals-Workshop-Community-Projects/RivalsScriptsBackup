set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("0_fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_launch"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 10);


set_num_hitboxes(AT_FSPECIAL_AIR, 4);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 100);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -74 + 52);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 4 + (plate_state * 2));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 130);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -40 + 52);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 6 + (plate_state * 2));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 160);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -60 + 52);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 6 + (plate_state * 2));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 100);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -20 + 52);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 6 + (plate_state * 2));
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));