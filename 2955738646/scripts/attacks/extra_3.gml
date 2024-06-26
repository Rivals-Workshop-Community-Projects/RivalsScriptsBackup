set_attack_value(AT_EXTRA_3, AG_CATEGORY, 0);
//set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("airdodge"));
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("crouch"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("crouch"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1); //Sliding around
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 100);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("S3K_3C"));
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.05);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_GOTO, 3);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1); //Sliding back after attacking
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 130);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

/*
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
*/

set_num_hitboxes(AT_EXTRA_3, 1);
/*
//Emerald spawning
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 100);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 34);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 89);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 89);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
*/

//Real hitbox
/*
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 89);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, sound_get("S3&K_51"));
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);