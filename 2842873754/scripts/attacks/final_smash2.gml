set_attack_value(48, AG_CATEGORY, 2);
set_attack_value(48, AG_SPRITE, sprite_get("final_smash2"));
set_attack_value(48, AG_HURTBOX_SPRITE, sprite_get("final_smash2_hurt"));
set_attack_value(48, AG_OFF_LEDGE, 1);
set_attack_value(48, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(48, AG_NUM_WINDOWS, 4);

//Startup
set_window_value(48, 1, AG_WINDOW_LENGTH, 24);
set_window_value(48, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(48, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(48, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(48, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(48, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 1, AG_WINDOW_SFX, sound_get("sfx_dedede_dstrong"));
set_window_value(48, 1, AG_WINDOW_SFX_FRAME, 22);

//Active 1
set_window_value(48, 2, AG_WINDOW_TYPE, 9);
set_window_value(48, 2, AG_WINDOW_LENGTH, 30);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(48, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.45);
set_window_value(48, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//Active 2
set_window_value(48, 3, AG_WINDOW_TYPE, 9);
set_window_value(48, 3, AG_WINDOW_LENGTH, 15);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(48, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(48, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//Ending
set_window_value(48, 4, AG_WINDOW_LENGTH, 30);
set_window_value(48, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(48, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(48, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(48, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(48, 3);

set_hitbox_value(48, 1, HG_MUNO_HITBOX_NAME, "Loops 1-2");
set_hitbox_value(48, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(48, 1, HG_WINDOW, 2);
set_hitbox_value(48, 1, HG_LIFETIME, 15);
set_hitbox_value(48, 1, HG_HITBOX_X, 34);
set_hitbox_value(48, 1, HG_HITBOX_Y, -28);
set_hitbox_value(48, 1, HG_WIDTH, 130);
set_hitbox_value(48, 1, HG_HEIGHT, 56);
set_hitbox_value(48, 1, HG_DAMAGE, 8);
set_hitbox_value(48, 1, HG_ANGLE, 361);
set_hitbox_value(48, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(48, 1, HG_PRIORITY, 5);
set_hitbox_value(48, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(48, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(48, 1, HG_HIT_SFX, sound_get("sfx_hammerhit_m"));
set_hitbox_value(48, 1, HG_VISUAL_EFFECT, 301);

set_hitbox_value(48, 2, HG_MUNO_HITBOX_NAME, "Loops 1-2");
set_hitbox_value(48, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(48, 2, HG_WINDOW, 2);
set_hitbox_value(48, 2, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(48, 2, HG_LIFETIME, 15);
set_hitbox_value(48, 2, HG_HITBOX_X, -34);
set_hitbox_value(48, 2, HG_HITBOX_Y, -28);
set_hitbox_value(48, 2, HG_WIDTH, 130);
set_hitbox_value(48, 2, HG_HEIGHT, 56);
set_hitbox_value(48, 2, HG_DAMAGE, 8);
set_hitbox_value(48, 2, HG_ANGLE, 361);
set_hitbox_value(48, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(48, 2, HG_PRIORITY, 5);
set_hitbox_value(48, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(48, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(48, 2, HG_HIT_SFX, sound_get("sfx_hammerhit_m"));
set_hitbox_value(48, 2, HG_VISUAL_EFFECT, 3);

set_hitbox_value(48, 3, HG_MUNO_HITBOX_NAME, "Loops 3+");
set_hitbox_value(48, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(48, 3, HG_WINDOW, 3);
set_hitbox_value(48, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(48, 3, HG_LIFETIME, 14);
set_hitbox_value(48, 3, HG_HITBOX_X, 0);
set_hitbox_value(48, 3, HG_HITBOX_Y, -28);
set_hitbox_value(48, 3, HG_WIDTH, 196);
set_hitbox_value(48, 3, HG_HEIGHT, 56);
set_hitbox_value(48, 3, HG_DAMAGE, 15);
set_hitbox_value(48, 3, HG_ANGLE, 361);
set_hitbox_value(48, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(48, 3, HG_PRIORITY, 6);
set_hitbox_value(48, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(48, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(48, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(48, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(48, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(48, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(48, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(48, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(48, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(48, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(48, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(48, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(48, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(48, 3, HG_HIT_SFX, sound_get("sfx_hammerhit_l"));
set_hitbox_value(48, 3, HG_VISUAL_EFFECT, 148);
set_hitbox_value(48, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(48, 3, HG_HIT_LOCKOUT, 10);
