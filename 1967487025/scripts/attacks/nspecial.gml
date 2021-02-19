set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.35);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .07);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.35);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .07);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

for (var i = 3; i <= 5; i++) {
set_window_value(AT_NSPECIAL, i, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, i, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, i, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, i, AG_WINDOW_SFX, sound_get("spear"));
set_window_value(AT_NSPECIAL, i, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, i, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, i, AG_WINDOW_CUSTOM_AIR_FRICTION, .07);
set_window_value(AT_NSPECIAL, i, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);
}

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.5);


set_num_hitboxes(AT_NSPECIAL, 3);

for (var i = 1; i <= 3; i++) {
set_hitbox_value(AT_NSPECIAL, i, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 2 + i);
set_hitbox_value(AT_NSPECIAL, i, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, 4 * i);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_HITPAUSE, 4 + 2 * i);
set_hitbox_value(AT_NSPECIAL, i, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_NSPECIAL, i, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_ANIM_SPEED, .1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, i, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 40);
}

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uncharged_spear"));
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .75);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);


set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 130);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .65);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);


set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("spear_hit"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);

set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("chaos_lance"));

