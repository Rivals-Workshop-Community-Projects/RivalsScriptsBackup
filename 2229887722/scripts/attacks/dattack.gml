set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
//set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 11);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -4);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Cancel window
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 12);
//set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.5);


set_num_hitboxes(AT_DATTACK, 3);

//Initial hitbox that can cancel the attack when hit
set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

//This is the secondary hitbox for hitlag, and knockback
//if the player does not hitcancel the first hitbox. The extra
//damage is handled through hit_player.gml script
set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_EFFECT, 9);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
//set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_CAMERA_SHAKE, -1 );

//Sourspot hitbox that spawns if first hitbox is whiffed
set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));

//ABYSS PROJECTILES

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 14);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DATTACK, 4, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 2 );
set_hitbox_value(AT_DATTACK, 4, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_DATTACK, 4, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile
