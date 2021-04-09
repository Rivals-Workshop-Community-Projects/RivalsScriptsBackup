set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_NUM_WINDOWS, 5);
set_attack_value(49, AG_HAS_LANDING_LAG, 4);
set_attack_value(49, AG_AIR_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 20);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("super_sonic"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 10);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(49, 2, AG_WINDOW_HSPEED, 13);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 10);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, sound_get("chaos_fire_hit")); 
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 30);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 28);

set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 20);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 43);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(49, 6);

set_hitbox_value(49, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 4, HG_WINDOW, 2);
set_hitbox_value(49, 4, HG_HITBOX_X, 0);
set_hitbox_value(49, 4, HG_HITBOX_Y, -40);
set_hitbox_value(49, 4, HG_WIDTH, 100);
set_hitbox_value(49, 4, HG_HEIGHT, 100);
set_hitbox_value(49, 4, HG_PRIORITY, 2);
set_hitbox_value(49, 4, HG_DAMAGE, 5);
set_hitbox_value(49, 4, HG_ANGLE, 40);
set_hitbox_value(49, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 4);
set_hitbox_value(49, 4, HG_EFFECT, 0);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 1); //7
set_hitbox_value(49, 4, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 4, HG_LIFETIME, 3);
set_hitbox_value(49, 4, HG_TECHABLE, 1);
set_hitbox_value(49, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(49, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 5, HG_WINDOW, 2);
set_hitbox_value(49, 5, HG_HITBOX_X, 0);
set_hitbox_value(49, 5, HG_HITBOX_Y, -40);
set_hitbox_value(49, 5, HG_WIDTH, 100);
set_hitbox_value(49, 5, HG_HEIGHT, 100);
set_hitbox_value(49, 5, HG_PRIORITY, 2);
set_hitbox_value(49, 5, HG_DAMAGE, 5);
set_hitbox_value(49, 5, HG_ANGLE, 40);
set_hitbox_value(49, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(49, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(49, 5, HG_VISUAL_EFFECT, 4);
set_hitbox_value(49, 5, HG_EFFECT, 1);
set_hitbox_value(49, 5, HG_BASE_HITPAUSE, 1); //7
set_hitbox_value(49, 5, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 5, HG_LIFETIME, 3);
set_hitbox_value(49, 5, HG_TECHABLE, 1);
set_hitbox_value(49, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(49, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 4);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -40);
set_hitbox_value(49, 1, HG_WIDTH, 100);
set_hitbox_value(49, 1, HG_HEIGHT, 100);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 10);
set_hitbox_value(49, 1, HG_ANGLE, 50);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(49, 1, HG_EFFECT, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 10); //10
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("chaos_hit1"));
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 2);
set_hitbox_value(49, 1, HG_TECHABLE, 1);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 4);
set_hitbox_value(49, 2, HG_HITBOX_X, 0);
set_hitbox_value(49, 2, HG_HITBOX_Y, -40);
set_hitbox_value(49, 2, HG_WIDTH, 100);
set_hitbox_value(49, 2, HG_HEIGHT, 100);
set_hitbox_value(49, 2, HG_PRIORITY, 2);
set_hitbox_value(49, 2, HG_DAMAGE, 10);
set_hitbox_value(49, 2, HG_ANGLE, 50);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(49, 2, HG_EFFECT, 0);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 10);//10
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 2, HG_HIT_SFX, sound_get("chaos_hit2"));
set_hitbox_value(49, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 2, HG_LIFETIME, 4);
set_hitbox_value(49, 2, HG_TECHABLE, 1);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 4);
set_hitbox_value(49, 3, HG_HITBOX_X, 0);
set_hitbox_value(49, 3, HG_HITBOX_Y, -40);
set_hitbox_value(49, 3, HG_WIDTH, 120);
set_hitbox_value(49, 3, HG_HEIGHT, 120);
set_hitbox_value(49, 3, HG_PRIORITY, 2);
set_hitbox_value(49, 3, HG_DAMAGE, 20);
set_hitbox_value(49, 3, HG_ANGLE, 50); //50
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(49, 3, HG_EFFECT, 1);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 148);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 3, HG_HIT_SFX, sound_get("chaos_blast"));
set_hitbox_value(49, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 3, HG_LIFETIME, 4);
set_hitbox_value(49, 3, HG_TECHABLE, 1);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);