set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 74);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);


set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 10);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_rain"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_empty);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 10);
set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 4);