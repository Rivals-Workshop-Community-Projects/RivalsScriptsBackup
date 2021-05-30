set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stand_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_holy_textbox"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX,  asset_get("sfx_ori_glide_start"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 0);


set_num_hitboxes(AT_TAUNT, 0);


set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 9999);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 9999);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 0.0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);

