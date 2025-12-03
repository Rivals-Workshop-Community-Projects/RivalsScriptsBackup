var atk = AT_DAIR;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 8);
set_attack_value(atk, AG_CATEGORY, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 5);

//sweet
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

//active loop
num++;
set_window_value(atk, num, AG_WINDOW_TYPE, 9);
set_window_value(atk, num, AG_WINDOW_LENGTH, 27);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

//hit bounce
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 18);

//ball
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 19);

//ball loop
num++;
set_window_value(atk, num, AG_WINDOW_TYPE, 9);
set_window_value(atk, num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 23);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 6);
set_hitbox_value(atk, num, HG_HITBOX_X, 4);
set_hitbox_value(atk, num, HG_HITBOX_Y, -18);
set_hitbox_value(atk, num, HG_WIDTH, 56);
set_hitbox_value(atk, num, HG_HEIGHT, 46);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 270);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, jestermode? fx_jm_bounce: HFX_GEN_BIG);
set_hitbox_value(atk, num, HG_HIT_SFX, jestermode? sound_get("JMDairHitHard"): asset_get("sfx_blow_medium2"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, num, HG_WINDOW, 999);
set_hitbox_value(atk, num, HG_LIFETIME, 1);
set_hitbox_value(atk, num, HG_HITBOX_X, 4);
set_hitbox_value(atk, num, HG_HITBOX_Y, -18);
set_hitbox_value(atk, num, HG_WIDTH, 56);
set_hitbox_value(atk, num, HG_HEIGHT, 46);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 80);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 6);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, jestermode? fx_jm_bounce2: HFX_GEN_OMNI);
set_hitbox_value(atk, num, HG_HIT_SFX, jestermode? sound_get("JMDairHitWeak"): asset_get("sfx_blow_weak2"));

set_num_hitboxes(atk, num);