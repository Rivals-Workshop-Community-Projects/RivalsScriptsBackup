set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

//Startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

//About to shoot
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("sfx_cape_swipe_hard1"));

//Active
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//Endlag
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_NSPECIAL_2, 1);

//Multihit 
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);