set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 17);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 67);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("projdair"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("projdair"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -15);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 14);

/*
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 25);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
*/