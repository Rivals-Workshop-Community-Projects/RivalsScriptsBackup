set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_bubblespray_breathless"));
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_FTILT, 1);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 8);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FTILT, 1, HG_FINAL_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 1, HG_EFFECT, 12);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_bubblepop"));
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("bubbles"));
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, bpop);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GRAVITY, -0.1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
