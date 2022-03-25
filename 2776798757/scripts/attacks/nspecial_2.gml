set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

//sslicer
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("lv1shot"));
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 10);

set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 68);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -78);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_2_proj2"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_2_proj2"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, sound_get("lv1shothit"));

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_2_proj"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("nspecial_2_proj"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, -35)
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EFFECT, 5);;
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, sound_get("lv1shothit"));

if !has_rune("N") exit;

set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 12);