set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 5);






set_num_hitboxes(AT_FAIR,3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 17);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, 20);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .66);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_may_whip1"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);


set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 58);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, .97);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7.66);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_may_whip2"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 130);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 301);



