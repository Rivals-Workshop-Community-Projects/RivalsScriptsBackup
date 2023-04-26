set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_GOTO, 6);

//set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);
//set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
//set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);
//set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
//set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 6);

//Tail hitbox.
//Hitboxes that send the enemy upwards
set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 38);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_UAIR, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 9 );
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_UAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 86);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_UAIR, 2, HG_EFFECT, 9 );
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_UAIR, 2, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 38);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_UAIR, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_UAIR, 3, HG_EFFECT, 9 );
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_UAIR, 3, HG_EXTRA_CAMERA_SHAKE, -1 );


set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -32);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 38);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 9 );
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 86);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 5, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_UAIR, 5, HG_EFFECT, 9 );
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

set_hitbox_value(AT_UAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 38);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 6, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_UAIR, 3, HG_EFFECT, 9 );
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

//ABYSS PROJECTILES

set_hitbox_value(AT_UAIR, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 20);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 7, HG_SHAPE, 0 );
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 7, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_UAIR, 7, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_UAIR, 7, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_UAIR, 7, HG_TECHABLE, 0 );
set_hitbox_value(AT_UAIR, 7, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_UAIR, 7, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_UAIR, 7, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile_up"));
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_VSPEED, -13);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_UAIR, 7, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile


/*
set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, 8);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 74);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 38);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, -90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_UAIR, 4, HG_EFFECT, 9 );
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
*/
//Leg hitbox.
//Sending upwards
/*
set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -20);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 32);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 44);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_UAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 70);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_UAIR, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 32);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 44);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 65);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_UAIR, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, 8);
set_hitbox_value(AT_UAIR, 8, HG_WIDTH, 74);
set_hitbox_value(AT_UAIR, 8, HG_HEIGHT, 38);
set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE, 270);
set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
*/