set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("phonedance"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("phonedance_hurt"));
set_attack_value(AT_DSTRONG_2, AG_OFF_LEDGE, 1);

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX, sound_get("superdeathkilldance"));
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 14);

set_num_hitboxes(AT_DSTRONG_2, 1);

set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 999999);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -185);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 79);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("dance"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("dance"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, .1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_DESTROY_EFFECT, ouchiemama );
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, ouchiemama);