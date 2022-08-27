set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 3 );

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 320);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 0);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 320);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sfx_kick_blow_medium1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_DAIR, 2, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 20);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 277);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sfx_kick_blow_heavy1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 3, HG_HIT_LOCKOUT, 6);


