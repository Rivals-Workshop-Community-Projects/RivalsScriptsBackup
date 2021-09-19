set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("grab_fthrow"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("grab_fthrow_hurt"));
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sound_get("sm64_woosh"));

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -59);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 50);

set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

/////DTHROW

set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("grab_dthrow"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("grab_dthrow_hurt"));
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sound_get("sm64_woosh"));

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -59);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 270);

set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

/////UTHROW

set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("grab_uthrow"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("grab_uthrow_hurt"));
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, sound_get("sm64_woosh"));
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -59);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 100);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//BTHROW

set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("grab_bthrow"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("grab_bthrow_hurt"));
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("sm64_woosh"));

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -59);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 135);

set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));