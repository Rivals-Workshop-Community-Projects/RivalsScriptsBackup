set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 18);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Equipping Yarn Ball Windows
//=========================
//Getting y ball
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);


//Holding out y ball (Link item get style)
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_coin_collect"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Recovery (IASA at a certain frame)
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//Aiming Yarn Ball Windows
//=========================
//Entering aim
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

//Holding Aim 
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);

//Throw y ball (weak/attack)
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CANCEL_FRAME, 6);

//Throw y ball (medium/special)
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CANCEL_FRAME, 9);

//Throw y ball (strong)
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
//set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CANCEL_FRAME, 15);

//Picking Up Yarn Ball (IASA)
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 24);
//set_window_value(AT_DSPECIAL, 9, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 9, AG_WINDOW_CANCEL_FRAME, 12);

//Yarn Dash Windows
//=======================

//Start up
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 16); // Modified from set_attack
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED, 0);

//Dashing window (automatically cancels as soon as Amber reaches the yarn ball)
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 120);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX, asset_get("sfx_infinidagger")); // was  sfx_ori_grenade_launch


//Landing on Yarn Ball
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));
//set_window_value(AT_DSPECIAL, 12, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 12, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_HAS_WHIFFLAG, 1);

//Extra Yarn Throw Windows for different directions
//==================================================
//Throw yarn up ^^^^^^^^^^^^^^^^^^^^^
//Throw y ball (weak/attack)
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_DSPECIAL, 13, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 13, AG_WINDOW_CANCEL_FRAME, 1);

//Throw y ball (medium/special)
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//set_window_value(AT_DSPECIAL, 14, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 14, AG_WINDOW_CANCEL_FRAME, 1);

//Throw y ball (strong)
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
//set_window_value(AT_DSPECIAL, 15, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 15, AG_WINDOW_CANCEL_FRAME, 1);

//Throw yarn down VVVVVVVVVVV
//Throw y ball (weak/attack)
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_DSPECIAL, 16, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 16, AG_WINDOW_CANCEL_FRAME, 1);

//Throw y ball (medium/special)
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//set_window_value(AT_DSPECIAL, 17, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 17, AG_WINDOW_CANCEL_FRAME, 1);

//Throw y ball (strong)
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
//set_window_value(AT_DSPECIAL, 18, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_DSPECIAL, 18, AG_WINDOW_CANCEL_FRAME, 1);

//Cancel Window to Pratfall from Yarn Dash
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_TYPE, 7); //Modified from attack_update. Becomes 1 if hit enemy
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.5);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.5);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(AT_DSPECIAL, 19, AG_WINDOW_SFX, asset_get("sfx_infinidagger"));

//Dummy window for using dspecial dash while in cooldown
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_ANIM_FRAME_START, 34);


set_num_hitboxes(AT_DSPECIAL, 6);

//Projectile hitbox (spawned manually from attack_update)
set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2 );
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 9001);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1 );
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_DSPECIAL, 1, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_DSPECIAL, 1, HG_THROWS_ROCK, 2 );
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 12 );
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, -1 );
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("yarnball"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("yarnball")); // was yarnball_cmask
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.45);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.02);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2 );
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0 );
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1); // was 109

//Dash hitbox
set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 11);
//set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0 );
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 42);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 10 );
set_hitbox_value(AT_DSPECIAL, 2, HG_GROUNDEDNESS, 0 );
//set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1 );
//set_hitbox_value(AT_DSPECIAL, 2, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Pacifist KO experimental move
set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 1);
//set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
//set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
//set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
//set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 1);

//Extra dash hitbox that stays in front of Amber (created from attack_update)
set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 1);
//set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
//set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 0);

//A 1 frame dash hitbox that spawns right before Amber dashes towards the yarn ball
set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 10);
//set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 0 );
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 42);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 10 );
set_hitbox_value(AT_DSPECIAL, 5, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL, 5, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Extra dash hitbox that spawns in front of Amber right before the dash
set_hitbox_value(AT_DSPECIAL, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 1);
//set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
//set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 0);

//Rune Waterballoon (spawned manually from hitbox_update)
set_hitbox_value(AT_DSPECIAL, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2 );
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 180);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 180);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 0 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE_FLIPPER, 3 );
set_hitbox_value(AT_DSPECIAL, 7, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL, 7, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_DSPECIAL, 7, HG_TECHABLE, 0 );
set_hitbox_value(AT_DSPECIAL, 7, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_DSPECIAL, 7, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1); // was 109
set_hitbox_value(AT_DSPECIAL, 7, HG_EFFECT, 98 );