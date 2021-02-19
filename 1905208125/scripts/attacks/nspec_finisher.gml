set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//window 1 - fire arrow
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);//soft damage
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
//window 2 - wait
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
//window 3 - fire arrow 2
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);//soft damage
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
//window 4 - wait
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
//window 5 - fire arrow 3
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_TYPE, 1);//soft damage
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 23);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_num_hitboxes(AT_NSPECIAL_2, 3);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 61);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 31);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 35);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 28);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 61);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 31);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 35);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 28);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, -1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 61);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 31);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_HSPEED, 28);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));