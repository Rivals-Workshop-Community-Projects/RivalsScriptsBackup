set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HSPEED, -1);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -58);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);