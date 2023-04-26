set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTILT, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//Ready to pounce
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_blink_dash")); //mfx_star
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Pounce
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DTILT, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Mid air pounce
set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
//set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DTILT, 3, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED, 10);
//set_window_value(AT_DTILT, 3, AG_WINDOW_VSPEED, -2);

//Landing
set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_DTILT, 4, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DTILT, 4, AG_WINDOW_CANCEL_FRAME, 10);
set_window_value(AT_DTILT, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Attack
set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED_TYPE, 0);
//set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED, 20);
set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")); 
set_window_value(AT_DTILT, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.25);

//Attack end lag
set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 13);
//set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.25);

set_window_value(AT_DTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8);
//set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

//Sweetspot
set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 24);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

//ABYSS PROJECTILES

set_hitbox_value(AT_DTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 16);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 0 );
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DTILT, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 4, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_DTILT, 4, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DTILT, 4, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_DTILT, 4, HG_TECHABLE, 0 );
set_hitbox_value(AT_DTILT, 4, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_DTILT, 4, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_DTILT, 4, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, 112 ); //111
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_DTILT, 4, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile