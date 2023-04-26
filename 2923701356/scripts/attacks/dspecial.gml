set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_SDI_MULTIPLIER, 1.7);

set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("dspecial_trick_s1"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("dspecial_trick_s1"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_trick_s1_hurt"));
set_attack_value(AT_FTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_num_hitboxes(AT_FTHROW, 1)

var explosion_size = 120;

set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 4); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, explosion_size);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, explosion_size);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dspecial_trick_s2"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("dspecial_trick_s2"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_trick_s2_hurt"));
set_attack_value(AT_DTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_num_hitboxes(AT_DTHROW, 1)
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 4); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, explosion_size);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, explosion_size);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));


set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("dspecial_trick_s3"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("dspecial_trick_s3"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_trick_s3_hurt"));
set_attack_value(AT_UTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_num_hitboxes(AT_UTHROW, 1)
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 4); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, explosion_size);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, explosion_size);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


