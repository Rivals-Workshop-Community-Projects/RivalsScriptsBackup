
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_spit"));

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 10);
// set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 30);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
// set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, -20);

set_num_hitboxes(AT_EXTRA_1, 1);


set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 48);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 10);
// set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 3);
// set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("invisible_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 550);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 850);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 550);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 850);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 30);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 60);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE_FLIPPER, 6);