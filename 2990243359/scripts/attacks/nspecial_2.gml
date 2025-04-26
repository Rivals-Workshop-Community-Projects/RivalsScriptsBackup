set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

//Startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, 2);

//Pulling Trident
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, 2);

//Retrive Trident
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_GOTO, 7);

//Starts Trigger
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED, 2);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("swing_heavy2"));
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 6);

//Trigger Trident Drop
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);

/*
set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 86);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 42);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));