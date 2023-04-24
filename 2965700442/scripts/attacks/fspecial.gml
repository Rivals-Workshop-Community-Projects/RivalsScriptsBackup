set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);

//No Charge
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_anthem_fspecial1"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL, 2, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 3, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 4, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 9);

//Charging
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_anthem_fspecial1"));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);

var c1_startup = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Charges on frame " + string(c1_startup) + ". Values assume for no charge.");

set_num_hitboxes(AT_FSPECIAL, 2);

//Uncharged Projectile
set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Uncharged");
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_anthem_fspecial2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_FSPECIAL, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_fspecial_proj1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fx_fspecial_proj1_hurt"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 128 / 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
//et_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

//Charged Projectile
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Fully Charged");
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_anthem_fspecial2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_fspecial_proj1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("fx_fspecial_proj1_hurt"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 192 / 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
//set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
//set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

//Orbiting Orb
set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Orbiting Orb");
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 300);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 198);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("fx_fspecial_proj2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

//Orb Explosion
set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Orb Explosion");
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 28);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 128);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 128);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 198 );
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.5 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("fx_fspecial3"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1 );
//set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1 );