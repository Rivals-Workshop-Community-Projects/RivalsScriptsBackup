//Super Mecha Ground Up Special
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("super_uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("super_uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_AIR_SPRITE, sprite_get("super_uspecial_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("super_uspecial_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1); //Putting hands into position
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, sound_get("super_chargeup"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1); //Charging hold
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, sound_get("S3&K_crash"));
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1); //Quickly put arms out
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_SFX, 1);
//  set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_SFX, sound_get("nspecial2_unibeam"));
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1); //Blasting
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_SFX, sound_get("super_beam"));
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 1); //Going back into idle endlag
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_SFX, sound_get("uspecial_loadgun"));
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_SFX_FRAME, 4);
//set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_GOTO, 7);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 2); //Beaming out
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
//set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 127);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT_X_OFFSET, 140);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT_Y_OFFSET, -90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("super_uspecial_beam_end"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_HSPEED, 30);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_VSPEED, -29);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

/*
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 2); //Missile!
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_VSPEED, -19);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, Explosive);

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 2); //Missile 2
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITSTUN_MULTIPLIER, 0.5); 
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_HSPEED, -8);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_VSPEED, -19);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_DESTROY_EFFECT, Explosive);