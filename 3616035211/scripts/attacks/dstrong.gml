var atk = AT_DSTRONG;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 3);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 8);

//post
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

//post
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

//post
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 3);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 34);
set_hitbox_value(atk, num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, num, HG_WIDTH, 56);
set_hitbox_value(atk, num, HG_HEIGHT, 66);
set_hitbox_value(atk, num, HG_PRIORITY, 8);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 135);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 5);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -34);
set_hitbox_value(atk, num, HG_HITBOX_Y, -26);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 50);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 135);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, jestermode? fx_jm_bounce: HFX_GEN_BIG);
set_hitbox_value(atk, num, HG_HIT_SFX, jestermode? sound_get("JMDairHitHard"): asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, num);