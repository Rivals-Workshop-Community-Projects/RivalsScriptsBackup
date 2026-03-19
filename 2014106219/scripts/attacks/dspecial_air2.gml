set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sound_get("magicshoot3"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED, 12);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 28);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));