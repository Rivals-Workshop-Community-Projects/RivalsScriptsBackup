set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_NUM_WINDOWS, 5);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_USES_CUSTOM_GRAVITY, 1);

//Animation
set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 138);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED, 0);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED, 0);

//Charging
set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 26);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, sound_get("Hit1"));
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HSPEED, 0);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);

//Dash
set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, sound_get("BlueSwish1"));
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 3, AG_WINDOW_HSPEED, 100);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED, 0);

//Back
set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 30);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_HSPEED, 0);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED, 0);

//Recovery
set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 15);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_HSPEED, 0);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED, 0);

set_num_hitboxes(49, 3);

set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 50);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 4);
set_hitbox_value(49, 1, HG_WIDTH, 6000);
set_hitbox_value(49, 1, HG_HEIGHT, 6000);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 1, HG_ANGLE, 10);
set_hitbox_value(49, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(49, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(49, 1, HG_TECHABLE, 1);

set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 4);
set_hitbox_value(49, 2, HG_LIFETIME, 10);
set_hitbox_value(49, 2, HG_HITBOX_X, -220);
set_hitbox_value(49, 2, HG_HITBOX_Y, -30);
set_hitbox_value(49, 2, HG_WIDTH, 518);
set_hitbox_value(49, 2, HG_HEIGHT, 60);
set_hitbox_value(49, 2, HG_PRIORITY, 3);
set_hitbox_value(49, 2, HG_DAMAGE, 35);
set_hitbox_value(49, 2, HG_ANGLE, 361);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 35);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 20);
//set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(49, 2, HG_EFFECT, 11);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
/*
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 2, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(49, 2, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
*/