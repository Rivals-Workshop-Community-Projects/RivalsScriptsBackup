set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1); //Startup
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1); //Swipe 1
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1); //1-2
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1); //Swipe 2
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1); //2-3
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));

set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1); //Swipe 3
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_BAIR, 7, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK,5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));


set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 76);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));