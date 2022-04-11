set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stand_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_blow_medium3"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_hit"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX,  asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 9*6);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX,  asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 16*5);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 15+9);
set_window_value(AT_TAUNT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_SFX,  asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_TAUNT, 6, AG_WINDOW_SFX_FRAME,2);

set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 10*4);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(AT_TAUNT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_SFX,  asset_get("sfx_spin"));
set_window_value(AT_TAUNT, 7, AG_WINDOW_SFX_FRAME,2);

set_num_hitboxes(AT_TAUNT, 3);


set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, .1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_DRIFT_MULTIPLIER, 0.01);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 30);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 30);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 6);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 4*5);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -74);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 120);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 20);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_TAUNT, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 3, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_TAUNT, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_GROUP, -1);
