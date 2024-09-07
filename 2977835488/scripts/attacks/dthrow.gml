set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("dthrow_air"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dthrow_hurt"));
set_attack_value(AT_DTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("dthrow_air_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_charged"));

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED,8);

set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTHROW, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_VSPEED, 3);
set_window_value(AT_DTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_SFX, asset_get("sfx_hod_fspecial_spirit"));

set_window_value(AT_DTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTHROW, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_HSPEED, -6);
set_window_value(AT_DTHROW, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DTHROW, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_SFX, asset_get("sfx_syl_dspecial_plantaway"));

set_num_hitboxes(AT_DTHROW, 1);

//Spider Smack
set_hitbox_value(AT_DTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DTHROW, 1, HG_IGNORES_PROJECTILES, 1);