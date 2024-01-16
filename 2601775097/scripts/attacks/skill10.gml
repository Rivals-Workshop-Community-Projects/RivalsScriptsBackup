// [10] SEARING DESCENT
var atk = AT_EXTRA_3;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("skill10"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("skill10_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 8);
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

var quit_atk = get_attack_value(atk, AG_NUM_WINDOWS) + 1;

var window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_searingdescent_rise"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 7);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[10].mp_cost1);

window_num ++; //rising fire
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 3);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -9.75);

window_num ++; //midair burst
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 1.75);

window_num ++; //endlag of part 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0.7);
set_window_value(atk, window_num, AG_WINDOW_GOTO, quit_atk);


window_num ++; //midair jump windup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 1.25);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_searingdescent_meteor"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 14);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[10].mp_cost2);

window_num ++; //pre-descent single frame (it's for the spike)
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

window_num++; //descent
set_window_value(atk, window_num, AG_WINDOW_TYPE, 10);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, -0.5);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 15);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

window_num++; //landing
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));


set_num_hitboxes(atk, 6);

var hitbox_num = 1; //rising fire hitbox 1
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 54);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.1); //3
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);

hitbox_num ++; //rising fire hitbox 2
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.1); //3
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);

hitbox_num ++; //rising fire hitbox 3
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -52);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90); //100
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.2); //0
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);

hitbox_num ++; //meteor sweetspot
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[2]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 2);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 3);

hitbox_num ++; //meteor constant sourspot
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 7);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[1]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 3);

hitbox_num ++; //meteor landing hitbox
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 110);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[1]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);