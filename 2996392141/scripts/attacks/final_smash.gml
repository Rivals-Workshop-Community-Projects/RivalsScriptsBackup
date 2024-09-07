set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));
set_attack_value(49, AG_NUM_WINDOWS, 6);
set_attack_value(49, AG_OFF_LEDGE, 1);

//Startup
set_window_value(49, 1, AG_WINDOW_LENGTH, 15);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 14);

//Active
set_window_value(49, 2, AG_WINDOW_LENGTH, 10);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//Endlag Whiff
set_window_value(49, 3, AG_WINDOW_LENGTH, 28);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(49, 3, AG_WINDOW_VSPEED, -4);
set_window_value(49, 3, AG_WINDOW_GOTO, 7);

//Cinematic (This has its own handling)
set_window_value(49, 4, AG_WINDOW_TYPE, 9);
set_window_value(49, 4, AG_WINDOW_LENGTH, 1);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 14);

//Successful Hit
set_window_value(49, 5, AG_WINDOW_LENGTH, 4);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 14);

//Endlag Successful
set_window_value(49, 6, AG_WINDOW_LENGTH, 28);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Detection");
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 10);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -32);
set_hitbox_value(49, 1, HG_WIDTH, 100);
set_hitbox_value(49, 1, HG_HEIGHT, 56);
set_hitbox_value(49, 1, HG_PRIORITY, 8);
set_hitbox_value(49, 1, HG_DAMAGE, 5);
set_hitbox_value(49, 1, HG_ANGLE, 50);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 18);
//set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(49, 2, HG_MUNO_HITBOX_NAME, "Explosion");
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 5);
set_hitbox_value(49, 2, HG_LIFETIME, 5);
set_hitbox_value(49, 2, HG_HITBOX_X, 128);
set_hitbox_value(49, 2, HG_HITBOX_Y, -128);
set_hitbox_value(49, 2, HG_WIDTH, 256);
set_hitbox_value(49, 2, HG_HEIGHT, 256);
set_hitbox_value(49, 2, HG_SHAPE, 2);
set_hitbox_value(49, 2, HG_PRIORITY, 8);
set_hitbox_value(49, 2, HG_DAMAGE, 15);
set_hitbox_value(49, 2, HG_ANGLE, 45);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 18);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
