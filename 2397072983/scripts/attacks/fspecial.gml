set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 45);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ghost_glove"));


set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 55);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 11*5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ell_eject"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 10*5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_bash_use"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 10*5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 40);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("GL"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 2);

set_num_hitboxes(AT_FSPECIAL, 20);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 36);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("lhit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("f0"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);


set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("anhit"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("f1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("anhit"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("f1"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("anhit"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("f1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, sound_get("anhit"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("f1"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, sound_get("gothit2"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("f2"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);

set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 19);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, sound_get("gothit2"));
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("f2"));
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, true);

set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 8, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 8, HG_HIT_SFX, sound_get("gothit2"));
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("f2"));
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, true);

set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 66);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 9, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 9, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_DAMAGE, 15);
set_hitbox_value(AT_FSPECIAL, 9, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 9, HG_VISUAL_EFFECT, 67 );
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 9, HG_HIT_SFX, sound_get("strongexp"));
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("f3"));
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, 500);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 10, HG_WIDTH, 1000);
set_hitbox_value(AT_FSPECIAL, 10, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 10, HG_DAMAGE, 18);
set_hitbox_value(AT_FSPECIAL, 10, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 10, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 10, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSPECIAL, 10, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 10, HG_HIT_SFX, sound_get("strongexp"));
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 10, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 10, HG_VISUAL_EFFECT_X_OFFSET, 1400);

