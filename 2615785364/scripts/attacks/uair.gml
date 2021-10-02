set_attack_value(AT_UAIR, AG_CATEGORY, 2);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("walljump"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 12);
set_attack_value(AT_UAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("spring"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -14);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,2);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 62);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("thud"));

set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 120);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("slam1"));
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.06);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("spring"));
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_MASK, sprite_get("spring"));
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_VSPEED, 6);