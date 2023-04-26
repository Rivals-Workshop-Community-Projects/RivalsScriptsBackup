set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));


//Yarn Dash Windows
//=======================

//Start up
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 1); // Modified from set_attack
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);

//Dashing window (automatically cancels as soon as Amber reaches the yarn ball)
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_infinidagger")); // was  sfx_ori_grenade_launch
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 10); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, -14); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 2); 

set_num_hitboxes(AT_EXTRA_1, 1);


set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 1); // was 109

