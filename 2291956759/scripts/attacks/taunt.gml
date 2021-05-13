set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stand_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX,  asset_get("sfx_spin"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX,  asset_get("sfx_diamond_collect"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX,  asset_get("sfx_spin"));

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);


set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4); 
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 20 );
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -76);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 41);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 0.85);



