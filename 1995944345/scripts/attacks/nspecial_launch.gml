set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_2_air"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_2_air_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("towerclimb_hunter"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 69);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);



set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, hit_sprites[7]);