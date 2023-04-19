set_attack_value(AT_COPY_RANGER, AG_CATEGORY, 2);
set_attack_value(AT_COPY_RANGER, AG_SPRITE, sprite_get("ability_ranger"));
set_attack_value(AT_COPY_RANGER, AG_HURTBOX_SPRITE, sprite_get("ability_ranger_hurt"));
set_attack_value(AT_COPY_RANGER, AG_NUM_WINDOWS, 5);
set_attack_value(AT_COPY_RANGER, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_RANGER, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_RANGER, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_RANGER, 1, AG_WINDOW_ANIM_FRAMES, 4);

//aiming/charging
set_window_value(AT_COPY_RANGER, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_RANGER, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_COPY_RANGER, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_RANGER, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//release
set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_SFX, sound_get("sfx_kfl_ranger_fire_lv1"));
set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_SFX_FRAME, 2);

//shoot
set_window_value(AT_COPY_RANGER, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_RANGER, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_COPY_RANGER, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_RANGER, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//endlag
set_window_value(AT_COPY_RANGER, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_RANGER, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_COPY_RANGER, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_COPY_RANGER, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_COPY_RANGER, 4);

//uncharged
set_hitbox_value(AT_COPY_RANGER, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_RANGER, 1, HG_WINDOW, 69);
set_hitbox_value(AT_COPY_RANGER, 1, HG_LIFETIME, 180);
set_hitbox_value(AT_COPY_RANGER, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_COPY_RANGER, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_COPY_RANGER, 1, HG_WIDTH, 45);
set_hitbox_value(AT_COPY_RANGER, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_RANGER, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_COPY_RANGER, 1, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_RANGER, 1, HG_VISUAL_EFFECT, 115);
set_hitbox_value(AT_COPY_RANGER, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_COPY_RANGER, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_COPY_RANGER, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_COPY_RANGER, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_COPY_RANGER, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_SPRITE, sprite_get("ability_ranger_proj_default"));
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_RANGER, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_COPY_RANGER, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_RANGER, 1, HG_HIT_SFX, asset_get("sfx_ori_energy_hit"));
set_hitbox_value(AT_COPY_RANGER, 1, HG_HITSTUN_MULTIPLIER, 0.6);

//lv 1 charge
set_hitbox_value(AT_COPY_RANGER, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_RANGER, 2, HG_WINDOW, 69);
set_hitbox_value(AT_COPY_RANGER, 2, HG_LIFETIME, 180);
set_hitbox_value(AT_COPY_RANGER, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_COPY_RANGER, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_COPY_RANGER, 2, HG_WIDTH, 60);
set_hitbox_value(AT_COPY_RANGER, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_RANGER, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_COPY_RANGER, 2, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_RANGER, 2, HG_VISUAL_EFFECT, 115);
set_hitbox_value(AT_COPY_RANGER, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_COPY_RANGER, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_COPY_RANGER, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_COPY_RANGER, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_COPY_RANGER, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_SPRITE, sprite_get("ability_ranger_proj_small"));
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_RANGER, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_COPY_RANGER, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_RANGER, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_COPY_RANGER, 2, HG_HITSTUN_MULTIPLIER, 1);

//lv 2 charge
set_hitbox_value(AT_COPY_RANGER, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_RANGER, 3, HG_WINDOW, 69);
set_hitbox_value(AT_COPY_RANGER, 3, HG_LIFETIME, 180);
set_hitbox_value(AT_COPY_RANGER, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_COPY_RANGER, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_COPY_RANGER, 3, HG_WIDTH, 80);
set_hitbox_value(AT_COPY_RANGER, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_RANGER, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_COPY_RANGER, 3, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_RANGER, 3, HG_VISUAL_EFFECT, 115);
set_hitbox_value(AT_COPY_RANGER, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_COPY_RANGER, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_COPY_RANGER, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_COPY_RANGER, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_COPY_RANGER, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_SPRITE, sprite_get("ability_ranger_proj_medium"));
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_RANGER, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_COPY_RANGER, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_RANGER, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_COPY_RANGER, 3, HG_HITSTUN_MULTIPLIER, 1);

//max charge
set_hitbox_value(AT_COPY_RANGER, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_RANGER, 4, HG_WINDOW, 69);
set_hitbox_value(AT_COPY_RANGER, 4, HG_LIFETIME, 180);
set_hitbox_value(AT_COPY_RANGER, 4, HG_HITBOX_X, 60);
set_hitbox_value(AT_COPY_RANGER, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_COPY_RANGER, 4, HG_WIDTH, 105);
set_hitbox_value(AT_COPY_RANGER, 4, HG_HEIGHT, 105);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_RANGER, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_COPY_RANGER, 4, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_RANGER, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_COPY_RANGER, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_COPY_RANGER, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_COPY_RANGER, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_COPY_RANGER, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_COPY_RANGER, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_SPRITE, sprite_get("ability_ranger_proj_large"));
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_RANGER, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_COPY_RANGER, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_RANGER, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_COPY_RANGER, 4, HG_HITSTUN_MULTIPLIER, 1);