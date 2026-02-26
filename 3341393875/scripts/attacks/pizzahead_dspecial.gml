set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 0);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("pizzahead_dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 22);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("pizzahead_dspecial_hurt"));

//Searching
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 33 - (has_rune("J") * 32));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, ground_friction * 0.75);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction * 0.75);

//////////
//TV Throw startup
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 33);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_GOTO, 3);

//TV Throw pause
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_GOTO, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 19);

//TV Throw spawn
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_GOTO, get_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS) + 1);
//////////

//////////
//Rat 
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 33);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_GOTO, 6);

//Rat 
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_GOTO, 7);

//Rat 
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_GOTO, get_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS) + 1);
//////////

//////////
//Uzi startup
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_GOTO, 9);

//Uzi pause
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_GOTO, 10);

//Uzi loop
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_GOTO, get_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS) + 1);
//////////

//Item Toss
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_GOTO, get_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS) + 1);
//////////

//////////
//Knight startup
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_GOTO, 13);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_SFX_FRAME, 23);

//Knight pause
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_GOTO, 14);

//Knight looking 1
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_GOTO, 15);

//Knight looking 2
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_GOTO, 16);

//Knight end
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_GOTO, get_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS) + 1);
//////////

//////////
//Dynamite startup
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_GOTO, 18);

//Dynamite pause
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_GOTO, 11);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_SFX, sound_get("vigithrow"));
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_SFX_FRAME, 17);
//////////

//////////
//Rat throw startup
set_window_value(AT_DSPECIAL_2, 19, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 19, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 19, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_2, 19, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 19, AG_WINDOW_GOTO, 20);
set_window_value(AT_DSPECIAL_2, 19, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 19, AG_WINDOW_SFX, sound_get("pspin"));
set_window_value(AT_DSPECIAL_2, 19, AG_WINDOW_SFX_FRAME, 19);

//Rat throw spin 1
set_window_value(AT_DSPECIAL_2, 20, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 20, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 20, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 20, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_2, 20, AG_WINDOW_GOTO, 21);

//Rat throw throw!!
set_window_value(AT_DSPECIAL_2, 21, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 21, AG_WINDOW_LENGTH, 27);
set_window_value(AT_DSPECIAL_2, 21, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL_2, 21, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_2, 21, AG_WINDOW_GOTO, 22);
set_window_value(AT_DSPECIAL_2, 21, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 21, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSPECIAL_2, 21, AG_WINDOW_SFX_FRAME, 19);

//Rat throw end
set_window_value(AT_DSPECIAL_2, 22, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 22, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 22, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 22, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL_2, 22, AG_WINDOW_GOTO, get_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS) + 1);

//////////


set_num_hitboxes(AT_DSPECIAL_2, 0);

//TV Hitbox
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 115);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, HFX_GEN_BIG);

//Bullet Hitbox
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 45);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -78);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 7.321);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 110);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("uziBullets"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("uziBullets"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//Uzi Gun Hitbox
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 24);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 5.321);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 120);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("pizzahead_uzi"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pizzahead_uzi"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_HSPEED, -8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, HFX_GEN_OMNI);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

//Knight
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 600);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITSTUN_MULTIPLIER, 0.01);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("forknight_fall_phead"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("forknight_fall_phead"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_VSPEED, -25);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, HFX_GEN_OMNI);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

//Fork
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 300);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 3.4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("fork"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fork"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_VSPEED, -17.5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_VISUAL_EFFECT, HFX_GEN_OMNI);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

//Dynamite
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 45);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WIDTH, 32);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_SPRITE, sprite_get("dynamite"));
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dynamite"));
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_HSPEED, -3.5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0); //-1
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_VISUAL_EFFECT, -1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Ground Explosion
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_LIFETIME, 13);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WIDTH, 44);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Air Explosion
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Rat thrown
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_LIFETIME, 600);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PRIORITY, 7.321);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_ANGLE, 120);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_SPRITE, sprite_get("ratball"));
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("ratball"));
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_HSPEED, -4 + (has_rune("M") * 3));
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_VSPEED, -4 + (has_rune("M") * -4));
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 0); // 2
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Rat dead
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_SPRITE, sprite_get("ratball_death"));
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("ratball_death"));
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_VISUAL_EFFECT, 1);