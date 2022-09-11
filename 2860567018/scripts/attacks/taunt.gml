
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);

set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 99);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 29);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 99);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 1.9);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 158);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, sound_get("9"));
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);