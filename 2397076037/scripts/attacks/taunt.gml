set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stabd_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 22*5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 22);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("vtaunt1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 14*5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 23);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 120);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 18);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("counterhit"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 1);


set_num_hitboxes(AT_TAUNT, 12);


set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 0.1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 17*5 + 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 35);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 10*5);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 150);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 36);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_DESTROY_EFFECT, 195);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_SPRITE, sprite_get("mcan"));
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_VSPEED, -3.5);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GRAVITY, .14);
set_hitbox_value(AT_TAUNT, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_UNBASHABLE, true);

