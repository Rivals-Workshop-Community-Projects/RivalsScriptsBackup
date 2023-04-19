set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTILT, 3);



set_hitbox_value(AT_FTILT, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 10, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 10, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 10, HG_LIFETIME, 10);
set_hitbox_value(AT_FTILT, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTILT, 10, HG_HITBOX_Y, 46);
set_hitbox_value(AT_FTILT, 10, HG_PRIORITY, -1);
set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FTILT, 10,  HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FTILT, 10, HG_WIDTH, 88);
set_hitbox_value(AT_FTILT, 10, HG_HEIGHT, 20);
set_hitbox_value(AT_FTILT, 10, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 10, HG_PRIORITY, 0);
set_hitbox_value(AT_FTILT, 10, HG_DAMAGE, 1.005);
set_hitbox_value(AT_FTILT, 10, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 10, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 10, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 10, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 10, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 10, HG_HIT_SFX, sound_get("uspec"));
set_hitbox_value(AT_FTILT, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTILT, 10, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FTILT, 10, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FTILT, 10, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FTILT, 10, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FTILT, 10, HG_PROJECTILE_IS_TRANSCENDENT, false);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 99);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 59);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 300);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("bonk"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);