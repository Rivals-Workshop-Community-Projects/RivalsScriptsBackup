

set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("nspecial_swallow"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 33);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 22);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 27);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, sound_get("nspecial_swallow"));
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX_FRAME, 1);



set_num_hitboxes(AT_NSPECIAL, 2);



set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_puff"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_puff"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));



set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 66);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 128);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);

