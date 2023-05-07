set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 0); //don't fall off the ledge


//startup
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX,sound_get("shotgun_fire_by_lemudcrab_edited"));////asset_get("sfx_dust_knuckle"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 10);
//first hit (2 frames)

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, -6.5);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_dust_knuckle"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);


//recovery
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 14);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2); //4
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4); //8
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

set_num_hitboxes(AT_FTILT, 2);


//normal hit.
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 3 );
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8 );
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 1);

//sweetspot.
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 8);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 8);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 4);  //high priority
set_hitbox_value(AT_FTILT, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_LOCKOUT, 12);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 148 ); //19//"sweetspot small"







//projectile.
set_hitbox_value(AT_FTILT, 3,  HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 3,  HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 3,  HG_WINDOW, 10);
set_hitbox_value(AT_FTILT, 3,  HG_LIFETIME, 7);
set_hitbox_value(AT_FTILT, 3,  HG_HITBOX_X, 0);
set_hitbox_value(AT_FTILT, 3,  HG_HITBOX_Y, 0);
set_hitbox_value(AT_FTILT, 3,  HG_WIDTH, 8);
set_hitbox_value(AT_FTILT, 3,  HG_HEIGHT, 2);
set_hitbox_value(AT_FTILT, 3,  HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3,  HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 3,  HG_VISUAL_EFFECT_Y_OFFSET, -16);
//knockback
set_hitbox_value(AT_FTILT, 3,  HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 3,  HG_KNOCKBACK_SCALING, 0.75); 
set_hitbox_value(AT_FTILT, 3,  HG_ANGLE, 361);
//stun
set_hitbox_value(AT_FTILT, 3,  HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 3,  HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 3,  HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 3, HG_HIT_LOCKOUT, 1);
//effects
set_hitbox_value(AT_FTILT, 3,  HG_EFFECT, 9); //polite

//set_hitbox_value(AT_FTILT, 3,  HG_VISUAL_EFFECT, 304  ); //"basic large"
set_hitbox_value(AT_FTILT, 3,  HG_HIT_SFX, sound_get("tiny_hit"));
set_hitbox_value(AT_FTILT, 3,  HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_SPRITE, sprite_get("ftilt_bullet"));
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_DESTROY_EFFECT, 193);
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_FTILT, 3,  HG_PROJECTILE_VSPEED, 0);
