set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USTRONG_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 26);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, sound_get("lv1shot"));

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 32);

set_num_hitboxes(AT_USTRONG_2, 2);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 70);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("ustrong_2_proj"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("ustrong_2_proj"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG_2, 1, HG_EFFECT, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 70);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_SPRITE, sprite_get("ustrong_2_proj2"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_MASK, sprite_get("ustrong_2_proj2"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG_2, 2, HG_EFFECT, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

if !has_rune("N") exit;

set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 4);