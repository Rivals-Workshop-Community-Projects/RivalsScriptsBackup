set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 22);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 11);
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

//Grab windows
set_window_value(AT_NSPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_NSPECIAL, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 0.25);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_NSPECIAL, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Successful Grab
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 1);

//Idle
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);

//Walk
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 48);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.04);

//Start Jump
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 27);



//Jump
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
//why wont this work? the world may never know
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX_FRAME, 1);



//Jump fall
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 31);

//Land
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 27);

//Grab Release
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_HSPEED, -8);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);


set_num_hitboxes(AT_NSPECIAL, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 34 + (has_rune("O") * 96));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 48 + (has_rune("O") * 160));
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
