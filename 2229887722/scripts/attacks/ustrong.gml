set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);

//Leap and vanish
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED, -20);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);//0.15
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_launch"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

//Reappear and spin
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);//0.15
//set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));


//Crash down (active)
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);//0.15
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));

//Landing (sweetspot X hitbox)
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 12);
//set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));

//End lag
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Recovery
set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_USTRONG, 4);

//Stun hitbox during crashing (spawns every frame)

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
//set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Tall hitbox crashing
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
//set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -155);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 33);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 195);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//X slash wide hitbox
set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

//Sweetspot
set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
//set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);//12
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.15);//1
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 127);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


//ABYSS PROJECTILES 
set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 16);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 35);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0 );
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 5, HG_EXTRA_HITPAUSE, 60 );
set_hitbox_value(AT_USTRONG, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 5, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_USTRONG, 5, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_USTRONG, 5, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 0 );
set_hitbox_value(AT_USTRONG, 5, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_USTRONG, 5, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_USTRONG, 5, HG_EXTRA_CAMERA_SHAKE, -1 );
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_USTRONG, 5, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile


set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 16);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 35);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 0 );
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 6, HG_EXTRA_HITPAUSE, 60 );
set_hitbox_value(AT_USTRONG, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 6, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_USTRONG, 6, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_USTRONG, 6, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_USTRONG, 6, HG_TECHABLE, 0 );
set_hitbox_value(AT_USTRONG, 6, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_USTRONG, 6, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_USTRONG, 6, HG_EXTRA_CAMERA_SHAKE, -1 );
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_HSPEED, -13);
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_USTRONG, 6, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile

set_hitbox_value(AT_USTRONG, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 2 );
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 35);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USTRONG, 7, HG_SHAPE, 0 );
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 9);//11
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1.1);//1
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 22);
set_hitbox_value(AT_USTRONG, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE_FLIPPER, 6 );
set_hitbox_value(AT_USTRONG, 7, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_USTRONG, 7, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_USTRONG, 7, HG_TECHABLE, 0 );
set_hitbox_value(AT_USTRONG, 7, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_USTRONG, 7, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, -2);
set_hitbox_value(AT_USTRONG, 7, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_USTRONG, 7, HG_HIT_LOCKOUT, 2 );
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 127 );
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_WALL_BEHAVIOR, 0 );
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 0 );
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_DESTROY_EFFECT, 1); // was 109
set_hitbox_value(AT_USTRONG, 7, HG_EFFECT, 99);