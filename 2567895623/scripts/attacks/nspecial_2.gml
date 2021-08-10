set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
//set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_burnconsume"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 42);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1.1);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fireball"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("fireball"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);