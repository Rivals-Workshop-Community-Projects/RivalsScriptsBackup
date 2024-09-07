set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);

//Startup
set_window_value(AT_DAIR, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 10);

set_window_value(AT_DAIR, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_GOTO, 8);

//Throw
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -4);

set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

set_num_hitboxes(AT_DAIR, 1);

set_hitbox_value(AT_DAIR, 1, HG_MUNO_HITBOX_NAME, "Grab");
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 32);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 32);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_DAIR, 2, HG_MUNO_HITBOX_NAME, "Throw");
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 24);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 56);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_orca_crunch"));