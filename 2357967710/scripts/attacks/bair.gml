set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 15);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -3);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -120);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 120);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 115);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -120);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 28);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 145);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
