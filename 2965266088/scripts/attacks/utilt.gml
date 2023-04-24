atk = AT_UTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_LANDING_LAG, 10);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6); //8
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2); //4
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")); //sfx_swipe_medium2
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 3);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -10); //-8

window_num ++; //endlag 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12); //20
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.08); //0.2

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6); //3
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 16);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9); //10
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(atk, hitbox_num, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4); //0.8
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8); //10
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2); //0.6
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1")); //sfx_blow_heavy2

set_num_hitboxes(atk, hitbox_num);