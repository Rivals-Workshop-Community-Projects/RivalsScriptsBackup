atk = AT_BAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("bair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 10);

window_num = 1; //windup 1 - check tap/hold
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 10);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);


window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);




set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////
set_num_hitboxes(atk, 2);

hitbox_num = 2;  
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_X, -60);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -56);
set_hitbox_value(atk, 1, HG_WIDTH, 80);
set_hitbox_value(atk, 1, HG_HEIGHT, 140);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 7);
set_hitbox_value(atk, 1, HG_ANGLE, 50);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 5)
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("sfx_hit4"));

hitbox_num ++; //spike
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 4);
set_hitbox_value(atk, 2, HG_HITBOX_X, -60);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 5);
set_hitbox_value(atk, 2, HG_WIDTH, 50);
set_hitbox_value(atk, 2, HG_HEIGHT, 15);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 10);
set_hitbox_value(atk, 2, HG_ANGLE, 270);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, fx_pow_hit[2]);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("sfx_hit2"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);


