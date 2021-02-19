set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_aster_card_throw"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);

// Sun Teleport
set_num_hitboxes(AT_USPECIAL, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, .4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_star_shot2"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_sun_shot"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);

// Star Teleport
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial_star_shot2"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

// Card Damage
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 16);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("fspecial_star_shot2"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
