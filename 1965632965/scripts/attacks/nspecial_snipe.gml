set_attack_value(AT_NSPECIAL_SNIPE, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_SNIPE, AG_SPRITE, sprite_get("nspecialnohands"));
set_attack_value(AT_NSPECIAL_SNIPE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_SNIPE, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_SNIPE, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_SNIPE, AG_AIR_SPRITE, sprite_get("nspecialnohands"));
set_attack_value(AT_NSPECIAL_SNIPE, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_SNIPE, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_SFX, sound_get("sniper"));
set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_SFX_FRAME, 35);
set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_NSPECIAL_SNIPE, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SNIPE, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_SNIPE, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_SNIPE, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_SNIPE, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_NSPECIAL_SNIPE, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SNIPE, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_SNIPE, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_SNIPE, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_SNIPE, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_num_hitboxes(AT_NSPECIAL_SNIPE, 1);

set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_PROJECTILE_DESTROY_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_PROJECTILE_SPRITE, sprite_get("snipershot"));
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_PROJECTILE_MASK, sprite_get("snipershot"));
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_PROJECTILE_HSPEED, 9);