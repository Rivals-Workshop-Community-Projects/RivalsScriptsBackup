set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 5);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_OFF_LEDGE, 0);
set_attack_value(AT_JAB, AG_CATEGORY, 0);
set_attack_value(AT_JAB, AG_HAS_LANDING_LAG, 1);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("fesliyan_gunshot"));

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);


set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 62);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 1); //makes jab1>utilt true.
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 2); //cannot flinch


//bullet



// projectile
set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 1);

set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
//priority/grouping
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1); 
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -32);
//shape
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 12);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 12);

//knockback
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.3); 
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
//stun
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 1); 
//effects
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("tiny_hit"));
set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_JAB, 2, HG_EFFECT, 9); //polite
set_hitbox_value(AT_JAB, 2,  HG_EXTRA_CAMERA_SHAKE, -1);
//set_hitbox_value(AT_JAB, 2,  HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, sprite_get("jab_bullet"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DESTROY_EFFECT, ralsei_fx_dair_spark); //rock small
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, ralsei_fx_dair_spark);


set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0 ); //stop on walls
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0 ); //stop on ground
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_VSPEED, 0);