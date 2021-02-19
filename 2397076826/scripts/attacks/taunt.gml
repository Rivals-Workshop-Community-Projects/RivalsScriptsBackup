set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stabd_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX,  asset_get("sfx_swipe_heavy2"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 75);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX,  asset_get("sfx_diamond_collect"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX,  asset_get("sfx_swipe_heavy2"));



set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 6); 
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -10 );
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 41);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 41);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 145);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 0.85);


set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 6); 
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -10 );
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 41);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 145);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HITSTUN_MULTIPLIER, 0.85);
