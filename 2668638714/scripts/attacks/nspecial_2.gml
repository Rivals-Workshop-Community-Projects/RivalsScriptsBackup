set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 10); // 45-> 10
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 70);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_EFFECT, 9); //Effect 9 -> 0
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);