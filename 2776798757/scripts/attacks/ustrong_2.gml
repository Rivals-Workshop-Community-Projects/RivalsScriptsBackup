set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USTRONG_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_USTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);

//sslicer
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, sound_get("lv1shot"));

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 23);

set_num_hitboxes(AT_USTRONG_2, 1);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 500);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("ustrong_2_proj"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("ustrong_2_proj"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

if !has_rune("N") exit;

set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 8);