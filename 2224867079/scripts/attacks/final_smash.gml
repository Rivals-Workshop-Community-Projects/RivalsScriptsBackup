set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_NUM_WINDOWS, 10);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_USES_CUSTOM_GRAVITY, 1);

//Hands apart from eachother
set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 20);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);

//Hands Slammed Together, Purple shit
set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 30);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, sound_get("Hit1"));

//If this hits then continue the move
set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 20);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, sound_get("BlueSwish1"));

//Uppercut
set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 10);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 4, AG_WINDOW_SFX, sound_get("BlueSwish1"));

//Dash Frame
set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 5, AG_WINDOW_SFX, sound_get("BlueSwish1"));
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_HSPEED, 165);

//After Dash
set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 9);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 6, AG_WINDOW_HSPEED, 4);

//over punch
set_window_value(49, 7, AG_WINDOW_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_LENGTH, 10);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 7, AG_WINDOW_HSPEED, -2);
set_window_value(49, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 7, AG_WINDOW_SFX, sound_get("BlueSwish1"));

//over punch 2
set_window_value(49, 8, AG_WINDOW_TYPE, 1);
set_window_value(49, 8, AG_WINDOW_LENGTH, 10);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 8, AG_WINDOW_HSPEED, 0);
set_window_value(49, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 8, AG_WINDOW_SFX, sound_get("BlueSwish1"));

set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 50);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 1);
set_hitbox_value(49, 1, HG_WIDTH, 6000);
set_hitbox_value(49, 1, HG_HEIGHT, 6000);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 1, HG_ANGLE, 10);
set_hitbox_value(49, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(49, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(49, 1, HG_TECHABLE, 1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_WINDOW, 3);
set_hitbox_value(49, 2, HG_LIFETIME, 20);
set_hitbox_value(49, 2, HG_HITBOX_X, 100);
set_hitbox_value(49, 2, HG_HITBOX_Y, 0);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 0);
set_hitbox_value(49, 2, HG_ANGLE, 0);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, sprite_get("final_smash_proj"));
set_hitbox_value(49, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);