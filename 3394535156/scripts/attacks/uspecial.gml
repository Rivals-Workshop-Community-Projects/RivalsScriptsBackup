set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_NAME, "USpecial: Staff of Surging");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Hits multiple times. Opponents can SDI out of the multihits.");
//set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_plague_uspecial_rise_2"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

// active 1
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 3.3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

// active 2
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// endlag
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Initial Hit");
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
//set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, cascade_tiny_flame_hfx);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Multihit");
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70);
//set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
//set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, cascade_tiny_flame_hfx);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_NAME, "Finishing Hit");
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, cascade_flame_hfx);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_PARTICLE_NUM, 2);