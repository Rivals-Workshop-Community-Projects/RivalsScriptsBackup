set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);

//Window 1
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("dog_gasterblaster"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);

//set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -3);
//set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

//Window 2
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);

//Window 3
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sound_get("dog_blasterfire"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -9);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);

//Window 4
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);

//Window 5
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);

//Hitboxes
set_num_hitboxes(AT_DAIR, 5);

//discarded Gaster Blaster hitbox
set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 300);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("proj_emptyblaster"));
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_HSPEED, -4);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_PARRY_STUN, 1);

//Hitbox 1
set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 10);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 128);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 16);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 256);

set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 3);


//Hitbox 2
set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 10);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 384);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 16);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 256);

set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 3);


//Hitbox 3
set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 10);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 640);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 16);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 256);

set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 3);


//Hitbox 4
set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 10);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 896);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 16);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 256);

set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 3);