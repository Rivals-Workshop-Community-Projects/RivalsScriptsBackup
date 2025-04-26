atk = AT_USTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(atk, AG_OFF_LEDGE, 0);
set_attack_value(atk, 87, "Reference Zetterburn UStrong");//AG_MUNO_ATTACK_MISC_ADD = i; i++;  

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 0);

window_num ++; //shoot up windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num ++; //scoop
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //endlag 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 17);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

window_num ++; //endlag 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 25);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 45);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 55);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_pen1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("hit2"));

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 20);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -52);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 57);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 111);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_pen_ink1);
set_hitbox_value(atk, hitbox_num, 81, "Sourspot");//HG_MUNO_HITBOX_NAME = i; i++;
set_hitbox_value(atk, hitbox_num, 92, "Inks opponents on hit");//HG_MUNO_HITBOX_MISC_ADD = i; i++; 
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("KB_hitmedium2"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 15);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -109);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 35);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 35);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 11);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_pen_ink2);
set_hitbox_value(atk, hitbox_num, 81, "Sweetspot");//HG_MUNO_HITBOX_NAME = i; i++;
set_hitbox_value(atk, hitbox_num, 92, "Inks opponents on hit");//HG_MUNO_HITBOX_MISC_ADD = i; i++; 
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("KB_hitmedium2"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

set_num_hitboxes(atk, 3);