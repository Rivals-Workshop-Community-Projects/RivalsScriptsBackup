set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

//Travels Forward
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Vanish (Active)
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//Transition to Whiff or Teleport
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 9);

//Down Strike (Not Holding anything)
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, -3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));

//Down Strike Endlag
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_GOTO, 12);

//Up Strike (Holds Special)
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED, -3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));

//Up Strike Endlag
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_GOTO, 12);

//Endlag (Whiff)
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_VSPEED, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_DSPECIAL, 2);

//Dash Hitbox
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 43);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);

//Point Explosion Hitbox
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 99);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, hfx_wind_huge);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, hfx_wind_large);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);