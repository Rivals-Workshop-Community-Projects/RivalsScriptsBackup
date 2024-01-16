var atk = AT_UTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 4);

var window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);

window_num ++; //windup 2 electric boogaloo
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 3);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

window_num ++; //attack itself
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -10.5);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

//amount of hitboxes
set_num_hitboxes(atk, 2);

var hitbox_num = 1; //strong hit
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 22);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 48);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 87);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_medium);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

hitbox_num ++; //air poke
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 7);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 20);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 54);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 88);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);