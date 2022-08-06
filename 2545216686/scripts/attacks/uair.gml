set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sfx_tail_swipe1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);//Kick 1
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1.2);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);//Inbetween
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, asset_get("sfx_birdclap"));
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);//Kick 2
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 3);

//1st hit
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 112);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

//2nd hit sweetspot
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -6);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);

//2nd hit sourspot
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);