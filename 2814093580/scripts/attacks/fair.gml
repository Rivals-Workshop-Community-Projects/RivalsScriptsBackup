set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_CATEGORY, 1)
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);


set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1)


set_num_hitboxes(AT_FAIR,2);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 83);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, slash_ul);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("spikyhit"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 0); 
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1); 

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, -18);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 27);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, slash_ul);
set_hitbox_value(AT_FAIR,2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("spikyhit"));
set_hitbox_value(AT_FAIR, 2, HG_HIT_LOCKOUT, 0); 
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1); 