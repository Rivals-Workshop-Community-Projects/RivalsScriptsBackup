set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);

//sslicer
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("chargeshotlv1"));

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 32);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 250);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("extra_1_proj"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, sprite_get("extra_1_proj"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_EFFECT, 11);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 75);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 22);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));

if !has_rune("N") exit;

set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 24);