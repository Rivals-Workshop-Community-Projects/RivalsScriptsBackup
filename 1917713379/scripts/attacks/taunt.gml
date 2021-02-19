set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("bear_hurtbox"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_waterhit_weak"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 18);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_waterhit_weak"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);


set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 120);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 1, HG_EFFECT, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .14);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, seal_hit_medium_heal);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);