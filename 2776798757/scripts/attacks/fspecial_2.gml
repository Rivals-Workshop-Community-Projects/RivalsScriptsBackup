set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_FSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

//sslicer
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("lv1shot"));

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 150);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_2_proj"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_2_proj"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, -35);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("sslicer"));

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 150);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial_2_proj"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("fspecial_2_proj"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("sslicer"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, -35);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -25);

if !has_rune("N") exit;

set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 8);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 8);