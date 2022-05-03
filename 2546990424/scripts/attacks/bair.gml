set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 5);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -66);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -23);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -19);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -66);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -14);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -23);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -19);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 37);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, 22);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 48);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));