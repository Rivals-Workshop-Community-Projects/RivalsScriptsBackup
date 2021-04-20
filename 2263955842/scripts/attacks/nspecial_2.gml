set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2_ground"));
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2_air"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_ground_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial2_air_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);


set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 6);

// startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 0);



// choosing direction
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);



// startup 2
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

// inflicting new direction
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 0);

// staying with arms open
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

// endlag
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);






set_num_hitboxes(AT_NSPECIAL_2, 0);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);


