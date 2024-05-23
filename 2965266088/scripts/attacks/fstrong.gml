atk = AT_FSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

window_num = 1; //windup to charge
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_strongcharge"));

window_num ++; //charge window
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //windup to punch 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 2);

window_num ++; //windup to punch 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 2);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 5);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1 //blast (sweet)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 72); //64
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80); //64
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 15);                                       //swapped   v
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);                                //swapped   v
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.3);                           //swapped   v
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);                                //swapped   v
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1);                              //swapped   v
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_dark_hit[2]);                    //swapped   v
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));    //swapped   v
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);

hitbox_num ++; //punch (sour)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 16); //0
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30); //-32
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 11);                                       //swapped   ^
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);                                //swapped   ^
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.9);                           //swapped   ^
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);                                 //swapped   ^
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);                            //swapped   ^
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_dark_hit[1]);                    //swapped   ^
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));   //swapped   ^
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);

set_num_hitboxes(atk, hitbox_num);