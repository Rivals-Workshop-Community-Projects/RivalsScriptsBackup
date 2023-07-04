set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 8);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_TAUNT, 3);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 10);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 16);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_TAUNT, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, sound_get("bb-slip"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 20);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 12);
set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 270);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TAUNT, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_TAUNT, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_TAUNT, 3, HG_HITSTUN_MULTIPLIER, 0.8);
//set_hitbox_value(AT_TAUNT, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_TAUNT, 3, HG_IGNORES_PROJECTILES, 1);