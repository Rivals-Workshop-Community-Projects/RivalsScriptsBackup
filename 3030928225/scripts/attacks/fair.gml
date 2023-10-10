atk = AT_FAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 7);

window_num = 1; //initial windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 6);

window_num ++; //attack 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);



window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 2; //tipper 
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 2);
set_hitbox_value(atk, 1, HG_HITBOX_X, 105);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -22);
set_hitbox_value(atk, 1, HG_WIDTH, 10);
set_hitbox_value(atk, 1, HG_HEIGHT, 10);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 10);
set_hitbox_value(atk, 1, HG_ANGLE, 361);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("sfx_hit4"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, fx_pow_sparks);


hitbox_num ++; //sour
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 5);
set_hitbox_value(atk, 2, HG_HITBOX_X, 50);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -20);
set_hitbox_value(atk, 2, HG_WIDTH, 90);
set_hitbox_value(atk, 2, HG_HEIGHT, 35);
set_hitbox_value(atk, 2, HG_PRIORITY, 1);
set_hitbox_value(atk, 2, HG_DAMAGE, 8);
set_hitbox_value(atk, 2, HG_ANGLE, 60);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, fx_pow_hit[0]);



set_num_hitboxes(atk, hitbox_num);