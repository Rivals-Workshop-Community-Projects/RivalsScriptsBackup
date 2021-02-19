set_attack_value(AT_FSPECIAL_GALAXY, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_GALAXY, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_GALAXY, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_FSPECIAL_GALAXY, AG_NUM_WINDOWS, 2);
set_window_value(AT_FSPECIAL_GALAXY, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_GALAXY, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_GALAXY, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_GALAXY, 1, AG_WINDOW_SFX, asset_get("sfx_shop_close"));

set_window_value(AT_FSPECIAL_GALAXY, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_GALAXY, 2, AG_WINDOW_ANIM_FRAMES, -3);
set_window_value(AT_FSPECIAL_GALAXY, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_FSPECIAL_GALAXY, 0);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_LIFETIME, 45);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_HITBOX_X, 83);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_HITBOX_Y, -113);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_galaxy_shot"));
set_hitbox_value(AT_FSPECIAL_GALAXY, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_galaxy_shot"));
