set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSTRONG_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//sslicer
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 26);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, sound_get("lv1shot"));

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 32);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fstrong_2_proj"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("fstrong_2_proj"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 15);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("lv1shothit"));

if !has_rune("N") exit;

set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 6);