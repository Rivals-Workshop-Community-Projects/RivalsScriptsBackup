set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_BAIR, 3);

//basic hit
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, petal_big);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

//sweetspot
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 47);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, 11);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 18);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 18);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 275);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_BAIR, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, petal_tipper);

//sourspot
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -58);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 47);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, petal_small);