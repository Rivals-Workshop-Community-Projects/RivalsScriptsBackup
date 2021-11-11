set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1); //startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9); //Spin frames
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1); //cancel endlag
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1); //fireball startup
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1); //fireball active
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1); //fireball endlag
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1); //fireball endlag iasa
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 20);

set_num_hitboxes(AT_NSPECIAL, 6);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2); //multihit part 1
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -19);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2); //multihit part 2
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -19);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1); 
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2); //multihit part 3
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, -19);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 5); //first melee hitbox of fireball attack
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 56);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 26);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 5); //second melee hitbox of fireball attack
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 38);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 5); //second melee hitbox of fireball attack
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 14);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -84);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 44);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 9); //fireball
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 42);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 9); //fireball charge detection
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 10); //Changing this number doesn't seem to actually affect the position of the hitbox on the charged fireball. Which is weird, because it does work for the above hitbox.
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 46);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 24);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 9); //fireball explosion
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 9);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 18);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 66);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 7);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, .825);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 10); //was 7
set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, .8); //was 0.4
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_VSPEED, 0);

/*set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2); //Old fireball
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 5); //fireball
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 80);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 42);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("proj_fireball"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, nspecial_hsp);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);*/