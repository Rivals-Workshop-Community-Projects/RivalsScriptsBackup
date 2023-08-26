set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("trap_warning"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("square_proj_multi"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, -8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


var temp_num = 1;

set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, temp_num, HG_LIFETIME, 24);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, temp_num, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, temp_num, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, temp_num, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_VISUAL_EFFECT, square_hfx);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_ZAP, 1);

set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_SPRITE, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_MASK, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_VSPEED, -1.5);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_DESTROY_EFFECT, square_destroy);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_EXTENDED_PARRY_STUN, 1);
temp_num += 1;

set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, temp_num, HG_LIFETIME, 24);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, temp_num, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, temp_num, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, temp_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSTRONG, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_VISUAL_EFFECT, square_hfx);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_ZAP, 1);

set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_SPRITE, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_MASK, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_DESTROY_EFFECT, square_destroy);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_EXTENDED_PARRY_STUN, 1);
temp_num += 1;

set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, temp_num, HG_LIFETIME, 24);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, temp_num, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, temp_num, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, temp_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSTRONG, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_VISUAL_EFFECT, square_hfx);
set_hitbox_value(AT_FSTRONG, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_ZAP, 1);

set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_SPRITE, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_MASK, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("square_proj"));
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_VSPEED, 1.5);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_DESTROY_EFFECT, square_destroy);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, temp_num, HG_EXTENDED_PARRY_STUN, 1);
temp_num += 1;

set_num_hitboxes(AT_FSTRONG, temp_num-1);
