set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
//NOTE: this applies to the projectile and window 2-3 only
set_attack_value(AT_DAIR, AG_MSG_ALT_SPRITES, [sprite_get("proj_statue"), asset_get("rock_down_spr")]);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 10); //BROKEN BY OMNICHARGE MECHANIC: cannot coexist with the hidden strong charge window... urgh
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 16);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, sound_get("pmd_flinch"));
//applied manually (see attack_update)
set_window_value(AT_DAIR, 6, AG_WINDOW_VSPEED, -9);
set_window_value(AT_DAIR, 6, AG_WINDOW_HSPEED, 2);

set_num_hitboxes(AT_DAIR, 3);

//falling
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 500);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//landing
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);

//projectile
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 480);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 32);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DAIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, HFX_KRA_ROCK_SMALL);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 3, HG_THROWS_ROCK, 2); //ignore
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("proj_statue"));
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_VSPEED, get_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED) * 0.7);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);