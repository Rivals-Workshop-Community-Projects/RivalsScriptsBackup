set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);//12 if wiffed or hit with disjoint
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 12);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1); //hilter
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -65);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 1, HG_EXTENDED_PARRY_STUN, 10);

set_hitbox_value(AT_BAIR, 10, HG_HITBOX_TYPE, 1);//back sour
set_hitbox_value(AT_BAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_X, -3);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 10, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 10, HG_WIDTH, 155);
set_hitbox_value(AT_BAIR, 10, HG_HEIGHT, 20);
set_hitbox_value(AT_BAIR, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 10, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 10, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 10, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 10, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 10, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 10, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 10, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
set_hitbox_value(AT_BAIR, 10, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_BAIR, 10, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 10, HG_EXTENDED_PARRY_STUN, 10);

set_hitbox_value(AT_BAIR, 11, HG_HITBOX_TYPE, 1);//front sour
set_hitbox_value(AT_BAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_X, -105);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_Y, -25);
set_hitbox_value(AT_BAIR, 11, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 11, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 11, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 11, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 11, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 11, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 11, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 11, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 11, HG_HITPAUSE_SCALING, .20);
set_hitbox_value(AT_BAIR, 11, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 11, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 11, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
set_hitbox_value(AT_BAIR, 11, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_BAIR, 11, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 11, HG_EXTENDED_PARRY_STUN, 20);

set_hitbox_value(AT_BAIR, 12, HG_HITBOX_TYPE, 1);//sweetspot
set_hitbox_value(AT_BAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_X, -150);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_Y, -25);
set_hitbox_value(AT_BAIR, 12, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 12, HG_WIDTH, 45);
set_hitbox_value(AT_BAIR, 12, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 12, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 12, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 12, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 12, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_BAIR, 12, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 12, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 12, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 12, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 12, HG_HIT_SFX, asset_get("sfx_ice_on_player"));
set_hitbox_value(AT_BAIR, 12, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_BAIR, 12, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 12, HG_EXTENDED_PARRY_STUN, 20);