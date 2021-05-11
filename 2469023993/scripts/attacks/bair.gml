set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_BAIR, 5);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -43);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 145);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6.25);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -43);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 145);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6.25);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, 11);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -14);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 31);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 17);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 5, HG_ANGLE_FLIPPER, 0);