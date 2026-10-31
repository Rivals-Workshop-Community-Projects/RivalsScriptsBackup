set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Windup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("voice_shy_guy_1"));

//Start swing
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("mace_swing"));

//Swing around
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("voice_shy_guy_2"));

//Endlag
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("mace_metal_hit"));
//set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DSTRONG,6);

//Mace start swing
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 16);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dstrong_ball_dark"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("blow_sfx1"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .05);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 10);

//Mace hit
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 100);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("dstrong_ball"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, true);
//set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1); 
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, -12);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);


//Mace end swing
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 44);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -50);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 16);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 16);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("dstrong_ball_dark"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("blow_sfx1"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .05);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 3);