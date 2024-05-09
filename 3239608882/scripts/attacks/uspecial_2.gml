set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
//set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_2_hurt"));
//set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("warp"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);



set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 99);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 360);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 58);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("wisp"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("wisp_coll"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, pulse);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.05);