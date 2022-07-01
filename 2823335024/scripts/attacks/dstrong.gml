set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//dstc  dstan dstj  dsta  dsth  dstr
//0-1:2 2-2:1 3-4:2 5-5:1 6-6:1 7-11:5

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 7);//10//7
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("ding_neo_2"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 7);//5
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 8);//16
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, -10.5);//-9//-12
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED, -7);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 17);//14
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_jumpair"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 21);//20
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_VSPEED, -8);



set_num_hitboxes(AT_DSTRONG, 2); 

//fall
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 50);

set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 60);

set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 270);//285
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);//9
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 151);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);


//land
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);

set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 140);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 40);

set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 58);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 151);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);


//fallover
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 5);

set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 120);

set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 65);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTENDED_PARRY_STUN, 1);


//shatter
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 7);

set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 120);

set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_EXTENDED_PARRY_STUN, 1);










