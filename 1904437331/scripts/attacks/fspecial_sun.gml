set_attack_value(AT_FSPECIAL_SUN, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_SUN, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_SUN, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_attack_value(AT_FSPECIAL_SUN, AG_NUM_WINDOWS, 4);
set_window_value(AT_FSPECIAL_SUN, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_SUN, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_SUN, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_SUN, 1, AG_WINDOW_SFX, asset_get("sfx_shop_close"));

set_window_value(AT_FSPECIAL_SUN, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_SUN, 2, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL_SUN, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL_SUN, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_SUN, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_SUN, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_SUN, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_SUN, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_SUN, 4, AG_WINDOW_HSPEED, -8);
set_window_value(AT_FSPECIAL_SUN, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_SUN, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_SUN, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_SUN, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));
set_window_value(AT_FSPECIAL_SUN, 4, AG_WINDOW_SFX_FRAME, 6);

set_num_hitboxes(AT_FSPECIAL_SUN, 0);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_sun_shot"));
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_sun_shot_hurt"));
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_SUN, 1, HG_PROJECTILE_DESTROY_EFFECT, 139);
