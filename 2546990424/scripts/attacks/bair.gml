set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -44);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 82);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 56);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));