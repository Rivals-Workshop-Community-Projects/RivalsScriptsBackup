set_attack_value(AT_COPY_ICE, AG_CATEGORY, 2);
set_attack_value(AT_COPY_ICE, AG_SPRITE, sprite_get("ability_ice"));
set_attack_value(AT_COPY_ICE, AG_HURTBOX_SPRITE, sprite_get("ability_ice_hurt"));
set_attack_value(AT_COPY_ICE, AG_NUM_WINDOWS, 4);
set_attack_value(AT_COPY_ICE, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_ICE, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ICE, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_COPY_ICE, 1, AG_WINDOW_ANIM_FRAMES, 3);

//initial hitbox
set_window_value(AT_COPY_ICE, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ICE, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_COPY_ICE, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_ICE, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_COPY_ICE, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_COPY_ICE, 2, AG_WINDOW_SFX, sound_get("sfx_krdl_ice_breath_loop"));

//blowing wind (hold)
set_window_value(AT_COPY_ICE, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_ICE, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_COPY_ICE, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_ICE, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//endlag
set_window_value(AT_COPY_ICE, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ICE, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_COPY_ICE, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_COPY_ICE, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_COPY_ICE, 5);

//Multihit
set_hitbox_value(AT_COPY_ICE, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_ICE, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_ICE, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_ICE, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_COPY_ICE, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_COPY_ICE, 1, HG_WIDTH, 83);
set_hitbox_value(AT_COPY_ICE, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_COPY_ICE, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_COPY_ICE, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_COPY_ICE, 1, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_ICE, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_COPY_ICE, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_COPY_ICE, 1, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_COPY_ICE, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));

set_hitbox_value(AT_COPY_ICE, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_ICE, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_ICE, 2, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_ICE, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_COPY_ICE, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_COPY_ICE, 2, HG_HITBOX_X, 63);
set_hitbox_value(AT_COPY_ICE, 2, HG_HITBOX_Y, -21);
set_hitbox_value(AT_COPY_ICE, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_ICE, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_ICE, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_ICE, 3, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_ICE, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_COPY_ICE, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_COPY_ICE, 3, HG_HITBOX_X, 63);
set_hitbox_value(AT_COPY_ICE, 3, HG_HITBOX_Y, -21);
set_hitbox_value(AT_COPY_ICE, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_ICE, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_ICE, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_ICE, 4, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_ICE, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_COPY_ICE, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_COPY_ICE, 4, HG_HITBOX_X, 63);
set_hitbox_value(AT_COPY_ICE, 4, HG_HITBOX_Y, -21);
set_hitbox_value(AT_COPY_ICE, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_ICE, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_ICE, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_ICE, 5, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_ICE, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_COPY_ICE, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_COPY_ICE, 5, HG_HITBOX_X, 63);
set_hitbox_value(AT_COPY_ICE, 5, HG_HITBOX_Y, -21);
set_hitbox_value(AT_COPY_ICE, 5, HG_HITBOX_GROUP, -1);