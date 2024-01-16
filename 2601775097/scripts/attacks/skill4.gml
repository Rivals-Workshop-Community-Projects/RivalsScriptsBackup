// [4] FLASHBANG
var atk = AT_EXTRA_4;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("skill4"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("skill4_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("skill4_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("skill4_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);

var quit_atk = get_attack_value(atk, AG_NUM_WINDOWS) + 1;

var window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.35);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

window_num ++; //grab
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

window_num ++; //grab fail
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12); //i'm counting the whifflag here too cuz this is whiffed anyways
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_GOTO, quit_atk);

//GRAB SUCCESS (windows 4 - 7)

window_num ++; //rotation
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

window_num ++; //windup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_uptilt_single"));

window_num ++; //flash
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[4].mp_cost2);

window_num ++; //endlag - knockback
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -10);

set_num_hitboxes(atk, 2);

var hitbox_num = 1; //grab
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 40);//40
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40); //40
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitbox_num ++; //flashbang
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1)
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 260);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_lightblow[1]);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);

hitbox_num ++; //flashbang - burning ver
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1)
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 230);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[1]);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);