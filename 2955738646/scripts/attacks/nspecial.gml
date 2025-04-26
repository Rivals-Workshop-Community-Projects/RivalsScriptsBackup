set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_2_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1); //Opening arm out
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("Gun_reload"));

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1); //Shooting
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("Gun"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1); //Dashing Back
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("NSpecial_GroundDash"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, -1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1); //Dashing Forward
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("NSpecial_GroundDash"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1); //Release and putting gun away
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, sound_get("Gun_unload"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 2);


//-----Aerial-----//

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1); //Readying up
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, -1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, sound_get("Gun_reload"));

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1); //Aerial gunning
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, sound_get("Gun"));
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1); //Done with shooting in air
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, sound_get("Gun_unload"));
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.01);

set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1); //Landing back onto
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX, sound_get("Ftilt_Turnaround"));
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_GOTO, 5);

//-----FOLLOW UP-----//

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 1); //U N I B E A M
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 50);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_SFX, sound_get("ARC_BTL_CMN_ExplFin_Far2"));
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_SFX_FRAME, 20);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_VSPEED, 0);

set_num_hitboxes(AT_NSPECIAL, 4);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2); //Horizontal shot
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -43);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2); //Angled shot
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_air_proj"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("nspecial_air_proj"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 18);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, true);

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1); //Ground Shooting push back
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 25);
set_hitbox_value(AT_NSPECIAL, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("Fair_finalhit"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2); //Unibeam, B I G
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 100); //dont worry about it
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 350);
set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Hit_FRN_DthScr"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 50);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);

/*
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y,-45);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 17);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Kdn_Fire_L"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
