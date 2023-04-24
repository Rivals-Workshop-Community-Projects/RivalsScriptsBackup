atk = 49;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("finalstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("finalstrong_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 1);

window_num = 1; //good night sweet princess
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 32);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_spellcard"));

window_num ++; //sleeping
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //transformation windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_boss_vortex_end"));

window_num ++; //transformation windup 2 (window 4)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_boss_final_cannon"));

window_num ++; //transformation loop
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 4);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);

window_num ++; //rumia EX windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

window_num ++; //rumia EX windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 10);

window_num ++; //rumia EX dash loop
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 5);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 36);

////////////////////////////////////////// GRAB FAIL //////////////////////////////////////////

window_num ++; //transform back to normal (window 9)
set_window_value(atk, window_num, AG_WINDOW_TYPE, 15); //this is a custom type i made, puts rumia in the "temp pratfall" state
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 32);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 20);

//////////////////////////////////////// GRAB SUCCESS /////////////////////////////////////////

window_num ++; //initial grab (window 10)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num ++; //grab slowdown (screen darkens too)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_abyss_portal_intro"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 20);

window_num ++; //dark screen (window 12)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 60);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 50);

window_num ++; //big hit
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 28);

window_num ++; //big hit hold
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 33);

window_num ++; //transform back to normal
set_window_value(atk, window_num, AG_WINDOW_TYPE, 15); //this is a custom type i made, puts rumia in the "temp pratfall" state
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 34);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //grab
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 48);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 48);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

hitbox_num ++; //explosion
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 13);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 128);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 128);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 45);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);

set_num_hitboxes(atk, hitbox_num);