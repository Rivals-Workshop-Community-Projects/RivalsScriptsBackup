//Blue Nspecial Charged

set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("red_nspecial2"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("red_nspecial2"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_UTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTHROW, 4, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_UTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTHROW, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 70);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("red_nspecial_proj2"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("red_nspecial_proj2"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
